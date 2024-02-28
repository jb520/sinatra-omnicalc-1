require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/payment/new") do
  erb(:payment)
end

get("/random/new") do
  erb(:random)
end

#results pages

get("/square/results") do
  @num = params.fetch("number").to_f
  @result = @num ** 2

  erb(:calc_square)
end

get("/square_root/results") do
  @num = params.fetch("number").to_f
  @result = Math.sqrt(@num)

  erb(:calc_square_root)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_f
  @pv = params.fetch("user_pv").to_f
  
  @result = @num ** 2

  erb(:calc_square)
end

get("/random/results") do
  @num = params.fetch("number").to_f
  @result = @num ** 2

  erb(:calc_square)
end
