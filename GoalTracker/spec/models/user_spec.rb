require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  #these will fail
  it { should validate_uniqueness_of(:email) }
  # need to create a subject for uniquess validation
  subject(:fred) { User.create(email: "fred@email.com", password: "123456")}


  it { should validate_presence_of(:session_token) }
  #this fails because if the test sets the User's session_token to nil and then runs the validations before_validation will intercept first and setup a new session_token

  describe 'session token' do
    it 'assigns a session_token if one is not given' do
      harry = User.create(email: 'gandalf@the-shire.com', password: 'abcdef')
      expect(harry.session_token).not_to be_nil

      # (5) Create a factory bot method and then use this instead.
      # expect(FactoryBot.build(:user).session_token).not_to be_nil
    end
  end
end
