#deleting all previous history when seeds file is called so that the data can be over written
Listing.delete_all
User.delete_all
Category.delete_all

p 'deleted previous listings & users & category'
p 'creating user' 
user = User.create(name:'Bella', email:'b@gmail.com', password: '123456')
p user 
p 'user created'


p 'creating categories'
categories = [
    {
      name: 'Cookies'
    },
    {
      name: 'Cupcakes'
    },
    {
      name: 'Brownies '
    },
    {
      name: 'Bread'
    },
    {
      name: 'Asian'
    },
    {
      name: 'Italian'
    },
    {
      name: 'Greek'
    },
    {
      name: 'Cakes'
    },
    {
      name: 'Tarts'
    },
    {
      name: 'Baked sweets'
    },

  ]


categories.each do |category|
Category.create(category)
end

p 'finished creating categories'

p 'creating listings'

listings = [
  {
  title: 'Cupcake',
  description: 'Best cupcake in the world',
  price: 5,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id,
 
  },
  {
  title: 'Cookie',
  description: 'Levain wannabe cookie',
  price: 8,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id,
 
  },
  {
  title: 'Brownie',
  description: 'Mysterious brownie',
  price: 5,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id,
 
  }
] 


#creating a new listing using the information from above in listings and attaching an image on from local storage and saving this. 
listings.each do |listing|
new_listing = Listing.new(listing) 
new_listing.picture.attach(
  io: File.open('app/assets/images/cookie.jpeg'), 
  filename: 'cookie.jpeg',
  content_type: "image/jpg/") 
new_listing.listings_categories.build(category_id: 2)
new_listing.save
p listing
end

p 'listings created'

