require 'sinatra'

get "/" do
	"السلام عليكم، هذه هي الصفحة الرئيسية"
end

get "/hi" do
	"أهلاً بك يا" + params[:name] 
end

get "/age" do
	year_of_birth = params[:yob].to_i
	age = 2016 - year_of_birth
	
	name = params[:name]
	
	"عمرك يا #{name} هو #{age}"
end

get "/cv" do
	erb :cv
end