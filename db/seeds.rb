
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
  title: 'Matcha Brownies',
  description: 'Green tea brownies with white chocolate',
  price: 500,
  quantity: 3,
  delivery: true,
  gluten_free: false,
  vegan: false,
  dairy_free:false,
  user_id: user.id,
 
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
  user_id: user.id,
 
  }
] 

 def categories
new_listing.listings_categories.build(catagory_id: 1)
end

listings.each do |listing|
new_listing = Listing.new(listing) 
new_listing.picture.attach(
  io: File.open('app/assets/images/cookie.jpeg'), 
  filename: 'cookie.jpeg',
  content_type: "image/jpg/") 
new_listing.categories
new_listing.save
p listing
end



p 'listings created'

