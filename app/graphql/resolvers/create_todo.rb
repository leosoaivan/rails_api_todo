class Resolvers::CreateTodo < GraphQL::Function
  argument :title, !types.String
  argument :created_by, !types.String

  type Types::TodoType

  def call(_obj, args, ctx)
    Todo.create!(
      title:      args[:title],
      created_by: args[:created_by]
    )
  end
end