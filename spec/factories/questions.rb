FactoryBot.define do
  factory :question do
    title { "MyString" }
    description { "MyString" }
    question_type { "" }
    options { [] }
    survey { nil }
  end
end
