# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


adele = Artist.create(name: "Adele", bio: "The Best Female Singer" )
samsmith = Artist.create(name: "Sam Smith", bio: "The Best Male Singer")

genre1 = Genre.create(name: "pop")
genre2 = Genre.create(name: "ballad")

song1 = Song.create(name: "Hello", artist_id: adele.id, genre_id: genre1.id)
song2 = Song.create(name: "Prayer", artist_id: samsmith.id, genre_id: genre2.id)

puts "Done"