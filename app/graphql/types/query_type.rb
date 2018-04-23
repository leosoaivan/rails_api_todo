Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'
  
  field :allTodos, !types[Types::TodoType] do
    description 'A query to return all Todos'
    
    resolve -> (obj, args, ctx) {
      Todo.all
    }
  end
end