require 'rails_helper'

RSpec.describe "updates/show", type: :view do
  before(:each) do
    @update = assign(:update, Update.create!(
      :version => 1,
      :date => "Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Date/)
  end
end
