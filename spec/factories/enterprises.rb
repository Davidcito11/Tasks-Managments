FactoryBot.define do
    factory :enterprise do
            nit { Faker::IDNumber.valid }
            address { Faker::Address.street_name }
            mobile { Faker::Number.number}
            enable { true }
    end
end