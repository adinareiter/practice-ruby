require "http"

puts "What city would you like to forecast?"
city_input = gets.chomp
puts "What is your preferred temperature unit: Celsius or Fahrenheit?"
user_temp_input = gets.chomp
user_temp_input.downcase
if user_temp_input == "celsius"
  temp_input = "metric"
else
  temp_input = "imperial"
end

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_input}&units=#{temp_input}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather_data = response.parse
temp = weather_data["main"]["temp"]

puts "The weather in #{city_input} is #{temp} degrees #{user_temp_input.upcase}"
