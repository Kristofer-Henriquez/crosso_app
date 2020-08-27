# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.create(name: "Bardock", default_image: "https://media.eventhubs.com/images/dragon-ball-fighterz/character_header_bardock_alt.jpg", command_list: "https://gamefaqs1.cbsistatic.com/faqs/71/75771-44.jpg", frame_data: "https://pbs.twimg.com/media/DZSEZoYWkAABa_m?format=jpg&name=900x900", game_id: "2")
ColorCostume.create(title: "Colors", image_url: "/Users/kristofer/Desktop/Actualize/crosso_app/Crosso_images/Screen Shot 2020-08-26 at 7.49.15 PM.png", character_id: "1")
Combo.create(combo_video: "cvideo.url", notation: "comands!", character_id: "1", user_id: "1")
Dlc.create(title: "Fighterz pass 1", content: "8 Characters", game_id: "2")
