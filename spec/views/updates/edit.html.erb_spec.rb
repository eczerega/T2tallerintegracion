require 'rails_helper'

RSpec.describe "updates/edit", type: :view do
  before(:each) do
    @update = assign(:update, Update.create!(
      :version => 1,
      :date => "MyString"
    ))
  end

  it "renders the edit update form" do
    render

    assert_select "form[action=?][method=?]", update_path(@update), "post" do

      assert_select "input#update_version[name=?]", "update[version]"

      assert_select "input#update_date[name=?]", "update[date]"
    end
  end
end
