module V3
  class Base < Grape::API
    version 'v3', using: :path
    mount V3::Surveys
  end
end