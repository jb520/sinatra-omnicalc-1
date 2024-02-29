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
  @years = params.fetch("user_years").to_i
  @pv = params.fetch("user_pv").to_f

  #apr to rate per month
  @rate = @apr / 100
  @r = @rate / 12 

  #years to number of periods
  @n = @years * 12

  @numerator = @r * @pv
  @denominator = 1 - ((1 + @r) ** (-@n))
  
  @result = @numerator / @denominator

  erb(:calc_payment)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @result = rand(@min..@max)

  erb(:calc_random)
end
