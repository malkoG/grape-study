FactoryBot.define do
  factory :question do
    title { "MyString" }
    desc { "MyString" }
    question_type { "" }
    options { [] }
    survey { nil }
  end
end
