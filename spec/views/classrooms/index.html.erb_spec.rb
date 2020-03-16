require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        class_name: "Class Name",
        enrolled_student: 2,
        student_name: ""
      ),
      Classroom.create!(
        class_name: "Class Name",
        enrolled_student: 2,
        student_name: ""
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    assert_select "tr>td", text: "Class Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
