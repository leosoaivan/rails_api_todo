require 'rails_helper'

RSpec.describe Resolvers::CreateUser do
  let(:valid_args) { 
    { 
      name: "Name", 
      authProvider: 
      { 
        email: "name@gmail",
        password: "tennis"
      }
    } 
  }

  let(:invalid_args) { 
    { 
      name: "", 
      authProvider: 
      { 
        email: "name@gmail",
        password: "tennis"
      }
    } 
  }

  context 'with valid params' do
    it 'creates a new User' do
      expect{subject.call(nil, valid_args, nil)}.to change(User, :count).by 1
    end
  end

  context 'with invalid params' do
    it 'raises an error' do
      expect{subject.call(nil, invalid_args, nil)}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end