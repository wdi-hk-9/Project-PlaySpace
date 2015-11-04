# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

%w(beach park playground).each {|category| Category.create name: category }

categories.each do |category|
  Category.create(name: category)
end

Playspace.delete_all

# ** Template for new playspace. NB: use lowercase **
# Playspace.create(name: "",
#   address: "",
#   district: "",
#   region: "",
#   bike_path: ,
#   merry_go_round: ,
#   play_structure: ,
#   seesaw: ,
#   slide: ,
#   swing: ,
#   carpark: ,
#   snack_shop: ,
#   wc: ,
#   category_id: Category.find_by name: ""
# )

Playspace.create(name: "hong kong park",
  address: "19 cotton tree drive",
  district: "central",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: nil,
  carpark: true,
  snack_shop: true,
  wc: true,
  category_id: Category.find_by name: "park"
)

Playspace.create(name: "mount austin playground",
  address: "mount austin road",
  district: "the peak",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: true,
  carpark: nil,
  snack_shop: nil,
  wc: true,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "sai on lane playground",
  address: "sai on lane",
  district: "sai wan",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: nil,
  carpark: nil,
  snack_shop: nil,
  wc: nil,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "victoria park",
  address: "1 hing fat street",
  district: "causeway bay",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: true,
  carpark: true,
  snack_shop: true,
  wc: true,
  category_id: Category.find_by name: "park"
)

Playspace.create(name: "quarry bay park",
  address: "taikoo shing",
  district: "quarry bay",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: true,
  slide: true,
  swing: true,
  carpark: nil,
  snack_shop: nil,
  wc: true,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "ap lei chau park",
  address: "ap lei chau main street",
  district: "aberdeen",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: true,
  carpark: nil,
  snack_shop: nil,
  wc: true,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "repulse bay beach",
  address: "16 beach road",
  district: "repulse bay",
  region: "hk",
  bike_path: true,
  merry_go_round: true,
  play_structure: true,
  seesaw: true,
  slide: true,
  swing: nil,
  carpark: true,
  snack_shop: true,
  wc: true,
  category_id: Category.find_by name: "beach"
)

Playspace.create(name: "wan chai park",
  address: "cross lane",
  district: "wan chai",
  region: "hk",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: true,
  slide: true,
  swing: nil,
  carpark: nil,
  snack_shop: nil,
  wc: nil,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "ho man tin park",
  address: "1 chung yee street",
  district: "ho man tin",
  region: "kln",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: true,
  slide: true,
  swing: nil,
  carpark: nil,
  snack_shop: nil,
  wc: nil,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "to kwa wan recreation ground",
  address: "66 ha heung road",
  district: "to kwa wan",
  region: "kln",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: true,
  carpark: nil,
  snack_shop: nil,
  wc: nil,
  category_id: Category.find_by name: "playground"
)

Playspace.create(name: "yuet wah street playground",
  address: "yuet wah street",
  district: "kwun tong",
  region: "kln",
  bike_path: nil,
  merry_go_round: nil,
  play_structure: true,
  seesaw: nil,
  slide: true,
  swing: nil,
  carpark: nil,
  snack_shop: nil,
  wc: nil,
  category_id: Category.find_by name: "playground"
)

User.delete_all

# ** Template for new user. NB: use lowercase)
# User.create(email: "",
#   username: ""
#   )

User.create(email: "ada@ada.com",
  username: "ada"
  )

User.create(email: "pip@pip.com",
  username: "pip"
  )

User.create(email: "anna@anna.com",
  username: "anna"
  )

User.create(email: "bob@bob.com",
  username: "bob"
  )

User.create(email: "cate@cate.com",
  username: "cate"
  )

User.create(email: "doug@doug.com",
  username: "doug"
  )

User.create(email: "ed@ed.com",
  username: "ed"
  )

