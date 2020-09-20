FactoryBot.define do
  factory :question do
    question_text { "MyString" }
    description { "MyString" }
    question_type { "" }
    example { "" }
    survey { nil }
  end
end
