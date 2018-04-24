FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }

    factory :todo_with_items do

      transient do
        items_count 10
      end

      after(:create) do |todo, evaluator|
        create_list(:item, evaluator.items_count, todo: todo)
      end
    end
  end
end