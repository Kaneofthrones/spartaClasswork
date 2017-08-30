# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	# Person.destroy_all
	Person.create([
		{name: 'Mobius', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'},
		{name: 'Mobius2', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'},
		{name: 'Mobius3', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'},
		{name: 'Mobius4', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'},
		{name: 'Mobius5', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'},
		{name: 'Mobius6', age: 25, job: 'Bounty Hunter', alien_status: 'Not_Really', car: 'chevrolet impala'}
	])