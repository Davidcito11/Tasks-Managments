FactoryBot.define do
    factory :employye do
            name { Faker::Name.name   }
            last_name { Faker::Name.last_name  }
            document { Faker::IDNumber.valid }
            mobile { Faker::Number.number }
            salary { Faker::Number.number}
            enable { true }
    end
end