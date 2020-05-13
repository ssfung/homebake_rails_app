require 'rails_helper'

RSpec.feature 'User signs up' do 
 scenario 'they can sign up for the website' do 
    user_email = "test@test.com"
    user_password = "123456"
    user_name = "test user"

    visit root_path 
    click_on 'Sign Up'
    fill_in 'user_email', with: user_email 
    fill_in 'user_name', with: user_name
    fill_in 'user_password', with: user_password
    fill_in 'user_password_confirmation', with: user_password
    click_on 'Sign up'

    expect(page).to have_content(user_name)
    #fields will be model_attribute#
  end 
end 