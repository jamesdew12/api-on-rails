FactoryGirl.define do
  factory :artist do
    name "The Smiths"
    description "a band from manchester lead by a vegan"
    association(:user)

  end
end
