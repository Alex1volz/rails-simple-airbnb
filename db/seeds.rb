# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

20.times do
  flat = Flat.new(
    name: Faker::Space.planet,
    address: Faker::Address.full_address,
    description: Faker::TvShows::SiliconValley.quote,
    price_per_night: Faker::Number.number(digits: 2),
    number_of_guests: Faker::Number.number(digits: 1),
    picture_url: ['https://medias-neuf-be.avendrealouer.fr/Image/programme-neuf_5218076_D.jpg', 'https://designmag.fr/wp-content/uploads/design-futuriste-salon-mobilier-blanc-simple.jpg', 'https://q-xx.bstatic.com/images/hotel/max1024x768/155/155497561.jpg', 'https://lh3.googleusercontent.com/proxy/wRr2SG5AtBS9PhvQdJnKydUtFO0rIktY2WIdgOwrfEswzY1ZSsxhWqhemk3Q_YUK-Hyalwhm2OdcVHfk6crpJMKEkf497FKtyExG498ZbXN2B0ZmeaBy5nepVFj7SUusvCoe'].sample
  )
  flat.save!
  puts "sucees for seeds #{flat.name}"
end
