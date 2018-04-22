user = User.create(name: "Leo S.", email: 'leo@gmail.com', password: 'hello', password_digest: 'hello')

# 50.times do
#   todo = Todo.create(title: Faker::Lorem.word, created_by: user.id)
#   todo.items.create(name: Faker::Lorem.word, done: false)
# end

3.times do
  FactoryBot.create(:todo_with_items, items_count: 10)
end