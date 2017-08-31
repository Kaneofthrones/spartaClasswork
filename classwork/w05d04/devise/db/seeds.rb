# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create ([
	{email:'mobius@cool.com', password:'mobius', name: 'Mobius' },
	{email:'tychus@cool.com', password:'tychus', name: 'Tychus' }
])

Post.create ([
 {title: 'mobius post1', body: 'mobius body1', user_id: 1 },
 {title: 'mobius post2', body: 'mobius body2', user_id: 1 },
 {title: 'mobius post3', body: 'mobius body3', user_id: 1 },
 {title: 'tychus post1', body: 'tychus body1', user_id: 2 },
 {title: 'tychus post2', body: 'tychus body2', user_id: 2 }
])

