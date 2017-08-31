class Post < ApplicationRecord
	belongs_to :user

	scope :for_user, lambda { |user| joins(:users).where("user_id = <%= current_user %>", user.id)}

		validates :title, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters'}
end
