FactoryGirl.define do
  factory :course do
    title { "Course 1" }
    description { "Description of the course for #{title}." }
    cost { 1000 }
    user
  end
end
