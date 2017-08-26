class Review

	attr_accessor :id, :title, :body

	def self.open_connection
		PG.connect(dbname: "review")
	end

	#to make data presentable
	def self.hydrate data
		review = Review.new
		review.id = data['id']
		review.title = data['title']
		review.body = data['body']

		review
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT id, title, body FROM review ORDER BY id"
		results = conn.exec(sql)

		reviews = results.map do |result|
			self.hydrate result
		end
		reviews
	end

	def self.find id
		conn = self.open_connection
		sql = "SELECT id, title, body FROM review WHERE id = #{id} LIMIT 1"
		reviews = conn.exec(sql)
		review = self.hydrate reviews[0]

		post
	end

end