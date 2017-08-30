# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Picture.destroy_all
Picture.create([
	{name: 'Phil Murray', description: 'Solid gold.', artist: 'self.', url: 'http://fillmurray.com/g/300/300'},
	{name: 'Bill Murray', description: 'Diamond.', artist: 'self.', url: 'http://fillmurray.com/g/300/301'},
	{name: 'Phil Collins', description: 'Platinum.', artist: 'self.', url: 'http://fillmurray.com/g/300/302'}
	])	
