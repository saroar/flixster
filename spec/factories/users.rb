FactoryGirl.define do
  factory :user do
    email         "user@email.com"
    name          "Udemy User"
    password      "password"
    confirmed_at  { Time.current }

    trait :admin do
      role 'admin'
    end
  end
end
