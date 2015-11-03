# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

categories = ["beach", "park", "playground"]

categories.each do |category|
  Category.create(name: category)
end


Playspace.delete_all

name, address, district, region, bike_path, merry_go_round, play_structure, seesaw, slide, swing, carpark, snack_shop, wc, category_id

playspace_list = [
  ["Hong Kong Park", "19 Cotton Tree Drive", "Central", "HK", nil, nil, true, nil, true, nil, true, true, true, 2],
  ["Mount Austin Playground", "Mount Austin Road", "The Peak", "HK", nil, nil, true, nil, true, true, nil, nil, true, 3],
  ["Sai On Lane Playground", "Sai On Lane", "Sai Wan", "HK", nil, nil, true, nil, true, nil, nil, nil, nil, 3],
  ["Victoria Park", "1 Hing Fat Street", "Causeway Bay", "Hong Kong", nil, nil, true, nil, true, true, true, true, true, 2],
  ["Quarry Bay Park", "Taikoo Shing", "Taikoo Shing", "HK", nil, nil, true, true, true, true, nil, nil, true, 3]
]

playspace_list.each do |name, address, district, region, bike_path, merry_go_round, play_structure, seesaw, slide, swing, carpark, snack_shop, wc, category_id|
  Playspace.create(name: name, address: address, district: district, region: region, bike_path: bike_path, merry_go_round:merry_go_round, play_structure: play_structure, seesaw: seesaw, slide: slide, swing: swing, carpark: carpark, snack_shop: snack_shop, wc: wc, category_id: category_id)
end
