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

User.destroy_all
Food.destroy_all
Drink.destroy_all
FoodsOrder.destroy_all
DrinksOrder.destroy_all
Order.destroy_all


User.create!(
  email: "admin@payeat.com",
  password: "12345678",
  sign_in_count: 0,
  role_id: "1"
)

User.create!(
  email: "manager@payeat.com",
  password: "12345678",
  sign_in_count: 0,
  role_id: "2"
)

User.create!(
  email: "waiter@payeat.com",
  password: "12345678",
  sign_in_count: 0,
  role_id: "3"
)

User.create!(
  email: "chef@payeat.com",
  password: "12345678",
  sign_in_count: 0,
  role_id: "4"
)

User.create!(
  email: "nate@cheapeats.com",
  password: "12345678",
  sign_in_count: 0,
  role_id: "1"
)

# 10 Food items
Food.create!(
  name: "Nasi Lemak",
  price: 10
)

Food.create!(
  name: "Nasi Ayam",
  price: 8
)

Food.create!(
  name: "Pork Noodle",
  price: 7
)

Food.create!(
  name: "Chicken Chop",
  price: 14
)

Food.create!(
  name: "Burger Ayam",
  price: 9
)

Food.create!(
  name: "Kebab",
  price: 5
)

Food.create!(
  name: "Bak Kut Teh",
  price: 25
)

Food.create!(
  name: "Chao Kuey Teow",
  price: 6
)

Food.create!(
  name: "Rojak",
  price: 4
)

Food.create!(
  name: "Yong Tau Foo",
  price: 8
)

# 10 Drink item
Drink.create!(
  name: "Teh Ais",
  price: 3
)

Drink.create!(
  name: "Milo Ais",
  price: 5
)

Drink.create!(
  name: "Sirap Limau",
  price: 5
)

Drink.create!(
  name: "Orange Juice",
  price: 7
)

Drink.create!(
  name: "Tequila ",
  price: 3
)

Drink.create!(
  name: "Asahi Beer",
  price: 8
)

Drink.create!(
  name: "Sky Juice",
  price: 2
)

Drink.create!(
  name: "Kopi O",
  price: 4
)

Drink.create!(
  name: "Red Wine",
  price: 23
)

Drink.create!(
  name: "Cane Juice",
  price: 4
)

o = Order.create!(
  table_number: 1,
  paid: false
)
FoodsOrder.create!(
  order_id: 1,
  food_id: 1,
  quantity: 1,
  status: 0,
  takeaway: false
)

FoodsOrder.create!(
  order_id: 1,
  food_id: 2,
  quantity: 2,
  status: 0,
  takeaway: false
)

FoodsOrder.create!(
  order_id: 1,
  food_id: 3,
  quantity: 3,
  status: 0,
  takeaway: true
)

DrinksOrder.create!(
  order_id: 1,
  drink_id: 1,
  quantity: 3,
  status: 0,
  takeaway: false
)

DrinksOrder.create!(
  order_id: 1,
  drink_id: 2,
  quantity: 3,
  status: 0,
  takeaway: true
)
o.calculate_total
o.save

o = Order.create!(
  table_number: 2,
  paid: false
)
FoodsOrder.create!(
  order_id: 2,
  food_id: 4,
  quantity: 1,
  status: 0,
  takeaway: false
)

FoodsOrder.create!(
  order_id: 2,
  food_id: 5,
  quantity: 2,
  status: 0,
  takeaway: false
)

FoodsOrder.create!(
  order_id: 2,
  food_id: 6,
  quantity: 3,
  status: 0,
  takeaway: false
)

DrinksOrder.create!(
  order_id: 2,
  drink_id: 3,
  quantity: 3,
  status: 0,
  takeaway: false
)

DrinksOrder.create!(
  order_id: 2,
  drink_id: 4,
  quantity: 3,
  status: 0,
  takeaway: false
)
o.calculate_total
o.save

o = Order.create!(
  table_number: 3,
  paid: true
)
FoodsOrder.create!(
  order_id: 3,
  food_id: 5,
  quantity: 1,
  status: 0,
  takeaway: false
)

FoodsOrder.create!(
  order_id: 3,
  food_id: 6,
  quantity: 1,
  status: 0,
  takeaway: false
)

DrinksOrder.create!(
  order_id: 3,
  drink_id: 5,
  quantity: 1,
  status: 0,
  takeaway: false
)

DrinksOrder.create!(
  order_id: 3,
  drink_id: 6,
  quantity: 1,
  status: 0,
  takeaway: false
)
o.calculate_total
o.save

Payment.create!(
  order_id: 3,
  payment_type: "cash",
  amount: 25
)


o = Order.create!(
  table_number: 4,
  paid: true
)
FoodsOrder.create!(
  order_id: 4,
  food_id: 7,
  quantity: 1,
  status: 0,
  takeaway: true
)

FoodsOrder.create!(
  order_id: 4,
  food_id: 8,
  quantity: 1,
  status: 0,
  takeaway: true
)

DrinksOrder.create!(
  order_id: 4,
  drink_id: 7,
  quantity: 1,
  status: 0,
  takeaway: true
)

DrinksOrder.create!(
  order_id: 4,
  drink_id: 8,
  quantity: 1,
  status: 0,
  takeaway: true
)
o.calculate_total
o.save

Payment.create!(
  order_id: 4,
  payment_type: "credit_card",
  amount: 37
)

# Order.skip_callback(:create, :before, :calculate_total)
# Order.set_callback(:create, :before, :calculate_total)

puts "#{User.count} users created"
puts "#{Food.count} food items created"
puts "#{Drink.count} drink items created"
puts "#{FoodsOrder.count} foods_orders created"
puts "#{DrinksOrder.count} drinks_orders created"
puts "#{Order.count} orders created"
