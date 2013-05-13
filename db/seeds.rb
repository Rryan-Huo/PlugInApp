# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    apartments=Apartment.create([{address: '5050 SouthLake Shore Dr',city: 'Chicago', state: 'IL'}, {address: '5354 South St',city: 'Chicago', state: 'IL'},
    	                            {address: '1234 Sac Ave',city: 'LA', state: 'CA'},{address: '1314 Lake Dr',city: 'LA', state: 'CA'},
    	                               {address: '2430 STATE St',city: 'LA', state: 'CA'}])