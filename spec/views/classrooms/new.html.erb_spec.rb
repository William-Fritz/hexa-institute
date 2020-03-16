require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      class_name: "MyString",
      enrolled_student: 1,
      student_name: ""
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input[name=?]", "classroom[class_name]"

      assert_select "input[name=?]", "classroom[enrolled_student]"

      assert_select "input[name=?]", "classroom[student_name]"
    end
  end
end
