require_relative '../config/environment.rb'


artist_1 = Artist.new("Artist_1", 10)
artist_2 = Artist.new("Artist_2", 5)
artist_3 = Artist.new("Artist_3", 40)
artist_4 = Artist.new("Artist_4", 27)

gallery_1 = Gallery.new("Gallery_1", "New York")
gallery_2 = Gallery.new("Gallery_2", "Seattle")

painting_1 = Painting.new("Painting_1", 10000, artist_1, gallery_1)
painting_2 = Painting.new("Painting_2", 90000, artist_1, gallery_2)
painting_3 = Painting.new("Painting_3", 9000, artist_2, gallery_1)
painting_4 = Painting.new("Painting_4", 50000, artist_3, gallery_2)
painting_5 = Painting.new("Painting_5", 30000, artist_4, gallery_1)
painting_6 = Painting.new("Painting_6", 5000, artist_2, gallery_1)
painting_7 = Painting.new("Painting_7", 10000, artist_4, gallery_1)
painting_8 = Painting.new("Painting_8", 200000, artist_1, gallery_2)

binding.pry

puts "Bob Ross rules."
