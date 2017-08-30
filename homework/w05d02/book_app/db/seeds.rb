# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.create ([
	{ name: 'Sun Tsu'},
	{ name: 'Vin Diesel'}
	])

Book.create ([
	{ name: 'The art of war', author_id: 1 },
	{ name: 'Why it sucked to be alive 2500 years ago', author_id: 1 },
	{ name: 'How to be bald', author_id: 2 },
	{ name: 'Chronicles of Riddick', author_id: 2 }
	])