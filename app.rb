require 'erb'

def say_hello(subject)
  erb :index, :locals => { :subject => subject }
end

get '/:name' do
  say_hello(params[:name])
end

get '/*' do
  say_hello("World")
end
