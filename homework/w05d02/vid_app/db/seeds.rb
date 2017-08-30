# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.destroy_all
Video.create([
	{title: 'Video1', url: 'https://www.youtube.com/watch?v=IgECPk4WeIc', description: 'Video 1 description'},
	{title: 'Video2', url: 'https://www.youtube.com/watch?v=QR_74m5GeLo', description: 'Video 2 description'},
	{title: 'Video3', url: 'https://www.youtube.com/watch?v=IDC6VU7oMbc', description: 'Video 3 description'}
	])
