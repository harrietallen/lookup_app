require 'spec_helper'

describe "lookups/new" do
  before(:each) do
    assign(:lookup, stub_model(Lookup,
      :url => "MyString",
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new lookup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lookups_path, "post" do
      assert_select "input#lookup_url[name=?]", "lookup[url]"
      assert_select "input#lookup_name[name=?]", "lookup[name]"
      assert_select "input#lookup_user_id[name=?]", "lookup[user_id]"
    end
  end
end
