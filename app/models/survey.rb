class Survey < ApplicationRecord
  has_many :question_list, foreign_key: "survey_id", class_name: "Question"
  has_many :polls

  accepts_nested_attributes_for :question_list

  def question_list=(params)
    self.question_list_attributes = params
  end
end
