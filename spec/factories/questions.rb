FactoryBot.define do
  factory :question do
    title { "MyString" }
    description { "MyString" }
    question_type { "" }
    example { "" }
    survey { nil }
  end
end
