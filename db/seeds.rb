user = User.create(name: "Leo S.", email: 'leo@gmail.com', password: 'hello', password_confirmation: 'hello')

3.times do
  FactoryBot.create(:todo_with_items, items_count: 10)
end