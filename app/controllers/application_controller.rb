
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

todos = [
  { id: 1, title: 'Buy groceries' },
  { id: 2, title: 'Do laundry' },
  { id: 3, title: 'Clean the house' }
]

get '/todos' do
  content_type :json
  todos = Todo.all
  todos.to_json
end


# Add a new todo
post '/todos' do
  content_type :json
  todo = Todo.create(title: params[:title])
  todo.to_json
end

# Update an existing todo
put '/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id])
  todo.update(title: params[:title])
  todo.to_json
end

# Delete a todo
delete '/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id])
  todo.destroy
  { id: params[:id] }.to_json
end


  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
