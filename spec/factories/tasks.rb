FactoryBot.define do
  factory :task do
    sequence(:name) { |n| "Name#{n}" }
    sequence(:status) { |n| "Status#{n}" }
  end
end
