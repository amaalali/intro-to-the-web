require 'sinatra'

get '/' do
"hello!"
end

get '/secret' do
  "this is all very secretive"
end

get '/chat' do
  "let's chat"
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
