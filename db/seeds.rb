# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
  email: 'uk.mahajan11@gmail.com',
  first_name: 'Umesh',
  last_name: 'Mahajan',
  date_of_birth: '29/07/1995',
  gender: 'male',
  contact_number: '8109639006',
  address: 'vidya nagar',
  designation: 'junior software engineer',
  role: 'employee'
)