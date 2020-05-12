# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Listing.delete_all
User.delete_all


p 'creating user' 
user = User.create(name:'Bella', email:'b@gmail.com', password: '123456')
p user 
p 'user created'


p 'creating listings'

listings = [
  {
  title: 'Matcha Brownies',
  description: 'Green tea brownies with white chocolate',
  price: 500,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id 
  # listing.picture.attach(
  # io: File.open("app/assets/images/brownie.jpeg"), 
  # filename: "brownie.jpg", 
  # content_type: "image/jpg"
  # )},
  },
  {
  title: 'Chocolate chip cookies',
  description: 'Dark chocolate chip cookies',
  price: 500,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id

  }
]

listings.each do |listing|
Listing.create(listing)
# l.picture
end
p 'listings created'

