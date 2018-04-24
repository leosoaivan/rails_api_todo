class Resolvers::CreateUser < GraphQL::Function
  AuthProviderInput = GraphQL::InputObjectType.define do
    name 'AuthProviderSignupData'

    argument :email, !types.String
    argument :password, !types.String
  end
  
  argument :name, !types.String
  argument :authProvider, !AuthProviderInput

  type Types::UserType

  def call(_obj, args, ctx)
    User.create!(
      name:     args[:name],
      email:    args[:authProvider][:email],
      password: args[:authProvider][:password]
    )
  end
end
