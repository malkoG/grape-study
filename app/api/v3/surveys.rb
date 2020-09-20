module V3
  class Surveys < Grape::API
    resource :survey do
      post :create do
        survey_params = params
        survey = Survey.new(survey_params)
        if survey.save
          survey.to_json
        end
      end
    end
  end
end