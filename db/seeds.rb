# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.create('name': 'jane doe')
Doctor.create('name': 'jon doe')
Doctor.create('name': 'josh doe')
Review.create('text': 'deec', 'doctor_id': 1)
Review.create('text': 'great', 'doctor_id': 1)
Review.create('text': 'terrible', 'doctor_id': 1)
