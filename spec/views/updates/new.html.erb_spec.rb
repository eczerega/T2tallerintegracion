require 'rails_helper'

RSpec.describe "updates/new", type: :view do
  before(:each) do
    assign(:update, Update.new(
      :version => 1,
      :date => "MyString"
    ))
  end

  it "renders new update form" do
    render

    assert_select "form[action=?][method=?]", updates_path, "post" do

      assert_select "input#update_version[name=?]", "update[version]"

      assert_select "input#update_date[name=?]", "update[date]"
    end
  end
end
