Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  description "The mutation root for this schema"

  field :createTodo, function: Resolvers::CreateTodo.new, description: "Creates a new Todo"
end
