require 'rails_helper'

RSpec.describe User, type: :model do
  subject {User.new(email: 's@gmail.com', password:'123456',name:'testuser',)}

  context 'validations' do
  it 'is valid with valid attributes' do 
  expect(subject).to be_valid
  end 
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid 
    end 
  end 
end
