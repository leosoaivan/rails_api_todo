require 'rails_helper'

RSpec.describe Resolvers::SignInUser do
  def perform(args = {})
    Resolvers::SignInUser.new.call(nil, args, { cookies: {} })
  end

  let (:user) { FactoryBot.create(:user) }

  context 'with valid params' do
    before :each do
      @result = perform(
        email: {
          email: user.email,
          password: user.password
        }
      )
    end
    
    it 'creates a token' do
      expect(@result).to respond_to(:token)
    end

    it 'returns the appropriate user' do
      expect(@result.user).to eql user
    end
  end

  context 'with invalid params' do
    it 'handles no credentials' do
      expect(perform).to be nil
    end

    it 'handles the wrong email' do
      expect(perform(email: { email: 'wrong' })).to be nil
    end

    it 'handles the wrong password' do
      expect(perform(email: { email: user.email, password: 'wrong' })).to be nil
    end
  end
end
