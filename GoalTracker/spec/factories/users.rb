# FactoryBot.define do
#   factory :user do
#     email { "MyString" }
#     password_digest { "MyString" }
#     session_token { "MyString" }
#   end
# end

FactoryBot.define do

  factory :user do
      email { Faker::Beer.unique.name }
      password { 'password' }
      logged_in? { true } 
      factory :zed do
          email { 'zed@iz_ded.com' }
      end
  end
end