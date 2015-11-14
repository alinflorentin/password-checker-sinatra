require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative('./models/password_checker.rb') 
 get "/" do
 erb :index
 end

 post "/login" do
 if PasswordChecker.new.check_password(params[:email],params[:password])
 	redirect("/congratulations")
 else 
 	redirect ("/")
 end
end
get "/congratulations" do
erb :congratulations
end
