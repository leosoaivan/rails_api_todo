require 'rails_helper'

RSpec.describe Resolvers::CreateTodo do
  let(:args) { { title: 'Learn Rails', created_by: '1' } }
  
  it 'creates a new Todo' do
    expect{subject.call(_obj = nil, args, ctx = nil)}.to change(Todo, :count).by 1
  end
end