# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l1 = Listing.create(name: 'Dr. Foo', company: 'Dr. Foo, Inc.', address: '1313 Mockingbird Lane', state: 'CA', description: 'Four score and seven years ago')
l2 = Listing.create(name: 'Dr. Bar', company: 'Dr. Bar, Inc.', address: '1111 Mockingbird Lane', state: 'MA', description: 'Trump will build a wall in four years')
l3 = Listing.create(name: 'Dr. Ack', company: 'Dr. Ack, Inc.', address: '2222 Mockingbird Lane', state: 'TX', description: 'The Wall will have waterslides')
l4 = Listing.create(name: 'Dr. Oop', company: 'Dr. Oop, Inc.', address: '3333 Mockingbird Lane', state: 'CA', description: 'Trump will be in office more than four years')

Attrib.create(listing_id: l1.id, key: 'free_parking', value: 't')
Attrib.create(listing_id: l1.id, key: 'accept_paypal', value: 't')
Attrib.create(listing_id: l1.id, key: 'senior_discoount', value: 't')

Attrib.create(listing_id: l2.id, key: 'free_parking', value: 'f')
Attrib.create(listing_id: l2.id, key: 'accept_paypal', value: 'f')
Attrib.create(listing_id: l2.id, key: 'senior_discoount', value: 'f')

Attrib.create(listing_id: l3.id, key: 'free_parking', value: 't')
Attrib.create(listing_id: l3.id, key: 'accept_paypal', value: 'f')
Attrib.create(listing_id: l3.id, key: 'senior_discoount', value: 't')

Attrib.create(listing_id: l4.id, key: 'free_parking', value: 'f')
Attrib.create(listing_id: l4.id, key: 'accept_paypal', value: 't')
Attrib.create(listing_id: l4.id, key: 'senior_discoount', value: 'f')
