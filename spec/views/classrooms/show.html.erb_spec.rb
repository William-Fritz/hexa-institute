require 'rails_helper'

RSpec.describe "classrooms/show", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      class_name: "Class Name",
      enrolled_student: 2,
      student_name: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Class Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
