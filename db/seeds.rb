user = User.create(name: "Leo S.", email: 'leo@gmail.com', password: 'hello', password_digest: 'hello')

50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: user.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end