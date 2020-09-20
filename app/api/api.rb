class API < Grape::API
  prefix 'api'
  mount V3::Base

  get :hello_world do
    { message: 'hello' }
  end
end
