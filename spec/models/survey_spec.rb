require 'rails_helper'

RSpec.describe Survey, type: :model do
  describe "About Association with Question Model" do
    context "when creating Survey Model with parameters" do
      it "Survey with single question" do
        params = {
          survey: {
            title: 'example survey',
            detail: 'detail of survey',
            code: '0x123azsad',
            question_list: [
              {
                question_text: "hello",
                description: "hello world",
                question_type: 'Long Answer',
                example: "HELL WORLD"
              },
              {
                question_text: "hello 2",
                description: "hello world",
                question_type: 'Long Answer',
                example: "HELL WORLD"
              }
            ]
          }
        }

        survey_params = params[:survey]
        survey = Survey.new(survey_params)

        expect(survey.save).to eq(true)
        expect(survey.question_list.first.question_text).to eq('hello')
        expect(survey.question_list.last.question_text).to eq('hello 2')
      end
    end
  end
end
