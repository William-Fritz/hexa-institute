require 'rails_helper'

RSpec.describe "institutes/show", type: :view do
  before(:each) do
    @institute = assign(:institute, Institute.create!(
      program: 2,
      total_student: 3,
      total_classroom: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
