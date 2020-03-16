require 'rails_helper'

RSpec.describe "institutes/new", type: :view do
  before(:each) do
    assign(:institute, Institute.new(
      program: 1,
      total_student: 1,
      total_classroom: 1
    ))
  end

  it "renders new institute form" do
    render

    assert_select "form[action=?][method=?]", institutes_path, "post" do

      assert_select "input[name=?]", "institute[program]"

      assert_select "input[name=?]", "institute[total_student]"

      assert_select "input[name=?]", "institute[total_classroom]"
    end
  end
end
