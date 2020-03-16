require 'rails_helper'

RSpec.describe "institutes/edit", type: :view do
  before(:each) do
    @institute = assign(:institute, Institute.create!(
      program: 1,
      total_student: 1,
      total_classroom: 1
    ))
  end

  it "renders the edit institute form" do
    render

    assert_select "form[action=?][method=?]", institute_path(@institute), "post" do

      assert_select "input[name=?]", "institute[program]"

      assert_select "input[name=?]", "institute[total_student]"

      assert_select "input[name=?]", "institute[total_classroom]"
    end
  end
end
