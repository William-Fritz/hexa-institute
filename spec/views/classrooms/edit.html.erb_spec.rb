require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      class_name: "MyString",
      enrolled_student: 1,
      student_name: ""
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input[name=?]", "classroom[class_name]"

      assert_select "input[name=?]", "classroom[enrolled_student]"

      assert_select "input[name=?]", "classroom[student_name]"
    end
  end
end
