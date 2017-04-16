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
Review.create('text': 'generic appointment, from a generically named doctor', 'doctor_id': 1)
Review.create('text': 'surprised he never changed his name', 'doctor_id': 1)
Review.create('text': 'does anyone read these reviews?', 'doctor_id': 1)
Review.create('text': 'great doctor, terrible disease', 'doctor_id': 2)
Review.create('text': 'I cannot wait for my next radiation appointment, he is so much fun', 'doctor_id': 2)
Review.create('text': 'best chemo experience ever', 'doctor_id': 2)
Review.create('text': 'very fun', 'doctor_id': 3)
Review.create('text': 'very charming, but seemed inexperienced', 'doctor_id': 3)
Review.create('text': 'good looking, less skilled at doctoring', 'doctor_id': 3)
