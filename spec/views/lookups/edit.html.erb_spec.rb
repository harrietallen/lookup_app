require 'spec_helper'

describe "lookups/edit" do
  before(:each) do
    @lookup = assign(:lookup, stub_model(Lookup,
      :url => "MyString",
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit lookup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lookup_path(@lookup), "post" do
      assert_select "input#lookup_url[name=?]", "lookup[url]"
      assert_select "input#lookup_name[name=?]", "lookup[name]"
      assert_select "input#lookup_user_id[name=?]", "lookup[user_id]"
    end
  end
end
