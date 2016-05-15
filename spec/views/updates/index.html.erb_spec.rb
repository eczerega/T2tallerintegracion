require 'rails_helper'

RSpec.describe "updates/index", type: :view do
  before(:each) do
    assign(:updates, [
      Update.create!(
        :version => 1,
        :date => "Date"
      ),
      Update.create!(
        :version => 1,
        :date => "Date"
      )
    ])
  end

  it "renders a list of updates" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
