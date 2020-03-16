FactoryBot.define do
  factory :classroom do
    class_name { "MyString" }
    enrolled_student { 1 }
    student_name { "" }
  end
end
