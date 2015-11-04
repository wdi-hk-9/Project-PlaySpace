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

playspace_list = [
  ["Hong Kong Park", "19 Cotton Tree Drive", "Central", "HK", nil, nil, true, nil, true, nil, true, true, true, 2],
  ["Mount Austin Playground", "Mount Austin Road", "The Peak", "HK", nil, nil, true, nil, true, true, nil, nil, true, 3],
  ["Sai On Lane Playground", "Sai On Lane", "Sai Wan", "HK", nil, nil, true, nil, true, nil, nil, nil, nil, 3],
  ["Victoria Park", "1 Hing Fat Street", "Causeway Bay", "Hong Kong", nil, nil, true, nil, true, true, true, true, true, 2],
  ["Quarry Bay Park", "Taikoo Shing", "Taikoo Shing", "HK", nil, nil, true, true, true, true, nil, nil, true, 3],
  ["Ap Lei Chau Park", "Ap Lei Chau Main Street", "Aberdeen", "HK", nil, nil, true, nil, true, true, nil, nil, true, 3],
  ["Repulse Bay Beach", "16 Beach Road", "Repulse Bay", "HK", nil, true, true, true, true, nil, true, true, true, 1],
  ["Wan Chai Park", "Cross Lane", "Wan Chai", "HK", nil, nil, true, true, true, nil, nil, nil, nil, 3],
  ["Ho Man Tin Park", "1 Chung Yee Street", "Ho Man Tin", "Kln", nil, nil, true, true, true, nil, nil, nil, nil, 3],
  ["To Kwa Wan Recreation Ground", "66 Ha Heung Road", "To Kwa Wan", "Kln", nil, nil, true, nil, true, true, nil, nil, nil, 3],
  ["Yuet Wah Street Playground", "Yuet Wah Street", "Kwun Tong", "Kln", nil, nil, true, nil, true, nil, nil, nil, nil, 3]
]

playspace_list.each do |name, address, district, region, bike_path, merry_go_round, play_structure, seesaw, slide, swing, carpark, snack_shop, wc, category_id|
  Playspace.create(name: name, address: address, district: district, region: region, bike_path: bike_path, merry_go_round:merry_go_round, play_structure: play_structure, seesaw: seesaw, slide: slide, swing: swing, carpark: carpark, snack_shop: snack_shop, wc: wc, category_id: category_id)
end

Review.delete_all

review_list = [
  ["This playground is awesome.", 2, 16],
  ["So much to do here.", 1, 16],
  ["One of the nicest parks in Hong Kong. Lots of open space to run around.", 2, 17],
  ["We came here for the first time last week and the kids had a great time.", 1, 17],
  ["This beach is fantastic.", 2, 22],
  ["Beware of the dodgy men. STAY AWAY!", 2, 23]
]

review_list.each do |comment, user_id, playspace_id|
  Review.create(comment: comment, user_id: user_id, playspace_id: playspace_id)
end
