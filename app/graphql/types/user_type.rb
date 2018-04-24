Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'A User'

  field :id, !types.ID, "A User's unique ID"
  field :name, !types.String, "A User's name"
  field :email, !types.String, "A User's unique email address"
end