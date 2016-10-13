# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

  stark = House.create(name: "Stark", img_url: "http://img.wallpaperfolder.com/f/63AAF8C2B67C/house-stark-game-thrones-got.jpg")
  lannister = House.create(name: "Lannister", img_url: "http://i.imgur.com/FYELsu6.png")
  targaryen = House.create(name: "Targaryen", img_url: "http://orig14.deviantart.net/89f7/f/2014/128/5/1/house_targaryen_symbol_by_yurtigo-d7hmo3k.png")

john = Character.create!(name: "John Snow", img_url: "https://thoughtcatalog.files.wordpress.com/2016/04/jon-snow.jpg", house: stark)
daenerys = Character.create!(name: "Daenerys", img_url: "http://static.srcdn.com/wp-content/uploads/daenerys.jpg", house: targaryen)
jaime = Character.create!(name: "Jaime",  img_url: "http://img1.looper.com/img/gallery/why-game-of-thrones-jaime-lannister-is-more-important-than-we-realized/intro.jpg", house: lannister)
