# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  municipe = Municipe.create(
    name: Faker::JapaneseMedia::OnePiece.character,
    cpf: Faker::IDNumber.brazilian_citizen_number,
    cns: rand.to_s[2..16],
    email: Faker::Internet.email,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 95).strftime('%d/%m/%Y'),
    phone: Faker::PhoneNumber.cell_phone_in_e164,
    photo: Faker::Avatar.image,
    status: Faker::Boolean.boolean
  )
  municipe.create_endereco(
    zipcode: Faker::Address.zip_code,
    street: Faker::Address.street_name,
    number: Faker::Address.building_number,
    complement: Faker::Address.secondary_address,
    district: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr
  )
end
