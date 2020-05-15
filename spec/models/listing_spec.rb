require 'rails_helper'

RSpec.describe Listing, type: :model do
subject { Listing.new(title: 'brownie', description: 'chocolate brownie', price: 500, quantity: 1, delivery: true, gluten_free:false, vegan:false, dairy_free:false, user_id:1)}

context 'validations' do 
  it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end 

  it 'is not valid without a title' do 
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do 
  subject.description = nil
  expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do 
  subject.description = nil
  expect(subject).to_not be_valid
  end 
  
  it 'is not valid without a quantity' do 
  subject.description = nil
  expect(subject).to_not be_valid
  end 

  

end 
end 



# it 'is not valid without a name' do
#     subject.name = nil
#     expect(subject).to_not be_valid 