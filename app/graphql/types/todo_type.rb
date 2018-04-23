Types::TodoType = GraphQL::ObjectType.define do
  name 'Todo'
  description 'A Todo'

  field :created_by, !types.String, "A Todo's creator"
  field :id, !types.ID, "A Todo's unique ID"
  field :title, !types.String, "A Todo's title"
end