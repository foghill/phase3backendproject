
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


# routes for Todos
get '/todos' do
  todos = Todo.all.includes(:category)
  todos.to_json(include: :category)
end

post '/todos' do
  todo = Todo.create(title: params[:title])
  todo.to_json(include: :category)
end

put '/todos/:id' do |id|
  todo = Todo.find(id)
  todo.update(title: params[:title])
  todo.to_json(include: :category)
end

delete '/todos/:id' do |id|
  todo = Todo.find(id)
  todo.destroy
  todo.to_json(include: :category)
end

# routes for Categories
get '/categories' do
  categories = Category.all.includes(:todos)
  categories.to_json(include: :todos)
end

post '/categories' do
  category = Category.create(name: params[:name])
  category.to_json(include: :todos)
end

put '/categories/:id' do |id|
  category = Category.find(id)
  category.update(name: params[:name])
  category.to_json(include: :todos)
end

delete '/categories/:id' do |id|
  category = Category.find(id)
  category.destroy
  category.to_json(include: :todos)
end

end