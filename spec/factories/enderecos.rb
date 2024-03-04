FactoryBot.define do
  factory :endereco do
    zipcode { Faker::Address.zip_code }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    complement { Faker::Address.secondary_address }
    district { Faker::Address.community }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    ibge_code { Faker::Address.building_number }

    municipe
  end
end
