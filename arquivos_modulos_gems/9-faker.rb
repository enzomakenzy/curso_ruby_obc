require "faker"
require "csv"

# puts Faker.class
# puts Faker::Name.name
# puts Faker::Name.first_name
# puts Faker::Name.last_name
# puts Faker::Music.instrument
# puts Faker::Sports::Football.player

data = []

20.times do 
  name = Faker::Name.name
  age = Faker::Date.birthday
  email = Faker::Internet.email
  number = Faker::PhoneNumber.phone_number

  data << [name, age, email, number]
end

arquive_csv = "data/faker.csv"
CSV.open(arquive_csv, "w") do |csv|
  csv << ["Name", "Age", "Email", "Number"]
  data.each do |dates|
    csv << dates
  end
end

puts "Dados salvos em: #{arquive_csv}"