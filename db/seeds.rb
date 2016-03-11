# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.where(name: "Admin").first_or_create
Role.where(name: "Manager").first_or_create
Role.where(name: "Waiter").first_or_create
Role.where(name: "Chef").first_or_create


User.create!(
  email: "admin@payeat.com",
  encrypted_password: "12345678",
  sign_in_count: 0,
  role_id: "1"
)

User.create!(
  email: "manager@payeat.com",
  encrypted_password: "12345678",
  sign_in_count: 0,
  role_id: "2"
)

User.create!(
  email: "waiter@payeat.com",
  encrypted_password: "12345678",
  sign_in_count: 0,
  role_id: "3"
)

User.create!(
  email: "chef@payeat.com",
  encrypted_password: "12345678",
  sign_in_count: 0,
  role_id: "4"
)

User.create!(
  email: "nate@cheapeats.com",
  encrypted_password: "12345678"
  sign_in_count: 0,
  role_id: "1"
)

# 10 Food items
Food.create!{
  name: "Nasi Lemak",
  price: 10
}

Food.create!{
  name: "Nasi Ayam",
  price: 8
}

Food.create!{
  name: "Pork Noodle",
  price: 7
}

Food.create!{
  name: "Chicken Chop",
  price: 14
}

Food.create!{
  name: "Burger Ayam",
  price: 9
}

Food.create!{
  name: "Kebab",
  price: 5
}

Food.create!{
  name: "Bak Kut Teh",
  price: 25
}

Food.create!{
  name: "Chao Kuey Teow",
  price: 6
}

Food.create!{
  name: "Rojak",
  price: 4
}

Food.create!{
  name: "Yong Tau Foo",
  price: 8
}

# 10 Drink item
Drink.create!{
  name: "Teh Ais",
  price: 3
}

Drink.create!{
  name: "Milo Ais",
  price: 5
}

Drink.create!{
  name: "Sirap Limau",
  price: 5
}

Drink.create!{
  name: "Orange Juice",
  price: 7
}

Drink.create!{
  name: "Tequila ",
  price: 3
}

Drink.create!{
  name: "Asahi Beer",
  price: 8
}

Drink.create!{
  name: "Sky Juice",
  price: 2
}

Drink.create!{
  name: "Kopi O",
  price: 4
}

Drink.create!{
  name: "Red Wine",
  price: 23
}

Drink.create!{
  name: "Cane Juice",
  price: 4
}
