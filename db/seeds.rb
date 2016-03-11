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
