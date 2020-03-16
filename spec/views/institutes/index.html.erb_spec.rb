require 'rails_helper'

RSpec.describe "institutes/index", type: :view do
  before(:each) do
    assign(:institutes, [
      Institute.create!(
        program: 2,
        total_student: 3,
        total_classroom: 4
      ),
      Institute.create!(
        program: 2,
        total_student: 3,
        total_classroom: 4
      )
    ])
  end

  it "renders a list of institutes" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
