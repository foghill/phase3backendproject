class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

todos = [
  { id: 1, title: 'Buy groceries' },
  { id: 2, title: 'Do laundry' },
  { id: 3, title: 'Clean the house' }
]

get '/todos' do
  content_type :json
  todos.to_json
end


  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
