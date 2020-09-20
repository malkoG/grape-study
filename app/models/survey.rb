class Survey < ApplicationRecord
  before_create :generate_code

  has_many :question_list, foreign_key: "survey_id", class_name: "Question"
  has_many :polls

  accepts_nested_attributes_for :question_list

  def question_list=(question_params)
    Rails.logger.error question_params.to_json

    question_params.map do |question|
      _question = Question.find_or_initialize_by(survey_id: question[:survey_id])
      question[:id] = _question.id
      question[:survey_id] = _question.survey_id
      question
    end

    self.question_list_attributes = question_params
  end

  private
    def generate_code
      hash = Base64.strict_encode64(title + Time.zone.now.to_i.to_s)
      self.code = hash
    end
end
