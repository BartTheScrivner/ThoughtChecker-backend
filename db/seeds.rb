# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Affirmation.destroy_all
Friendship.destroy_all

luis = User.create(name: "Luis", email: "lf261@gmail.com", phone_number: "7328811500")
dave = User.create(name: "Dave", email: "dtd@gmail.com", phone_number: "3046775759")
danny = User.create(name: "Danny", email: "dstc@gmail.com", phone_number: "2404261554")

aff1 = Affirmation.create(message: "Dave has an awesome spirit.", sender_id: danny.id, recipient_id: dave.id)
aff2 = Affirmation.create(message: "Luis is funny", sender_id: danny.id ,recipient_id: luis.id )
aff3 = Affirmation.create(message: "Danny is a hard worker", sender_id: luis.id ,recipient_id: danny.id)


friends1 = Friendship.create(friender_id: dave.id, friendee_id: luis.id, accepted: true)
friends2 = Friendship.create(friender_id: dave.id, friendee_id: danny.id, accepted: true)
friends3 = Friendship.create(friender_id: danny.id, friendee_id: luis.id, accepted: true)
