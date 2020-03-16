FactoryBot.define do
  factory :semesterlyplan do
    number { 1 }
    enrolled_class { "" }
    total_credit { 1 }
    cumulative_grade { 1.5 }
  end
end
