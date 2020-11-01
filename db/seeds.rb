# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	billy = User.create(first_name: "Billy", last_name: "Buxington", email: "billy@aol.com", password: "greenbeans")
	claire = User.create(first_name: "Claire", last_name: "Strickland", email: "claire@gmail.com", password: "fishsticks")
	ashley = User.create(first_name: "Ashley", last_name: "Tisdale", email: "ashley@yahoo.com", password: "milkmaid")
	megan = User.create(first_name: "Megan", last_name: "Fox", email: "megan@aol.com", password: "greenbeans")
	ben = User.create(first_name: "Ben", last_name: "Shwartzman", email: "ben@gmail.com", password: "fishsticks")
	luke = User.create(first_name: "Luke", last_name: "Dukerman", email: "luke@yahoo.com", password: "milkmaid")