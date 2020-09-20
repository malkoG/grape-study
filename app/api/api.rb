class API < Grape::API
  prefix 'api'
  format :json

  get :hello_world do
    { message: 'hello' }
  end
end
