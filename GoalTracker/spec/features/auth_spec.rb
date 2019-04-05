require 'spec_helper'
require 'rails_helper'

user = FactoryBot.build(:zed)

feature 'the shizignup process' do
    scenario 'has a new user page' do
        expect(page).to have_content('Sign Up') # page = current view/url ??
    end
    feature 'signing up a user' do

        scenario 'shows username on the homepage after shizignup' do #username = email
            expect(page).to have_content(user.email)
        end
    end
end

feature 'logging in' do
    scenario 'shows username on the homepage after login' do #username = email
        expect(page).to have_content(user.email)
    end
end
  
feature 'logging out' do
    scenario 'begins with a logged out state' 
        
    scenario 'doesn\'t show username on the homepage after logout' do #username = email
        expect(page).not_to have_content(user.email)
    end
  
end
