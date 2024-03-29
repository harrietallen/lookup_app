require 'spec_helper'

describe "lookups/index" do
  before(:each) do
    assign(:lookups, [
      stub_model(Lookup,
        :url => "Url",
        :name => "Name",
        :user_id => 1
      ),
      stub_model(Lookup,
        :url => "Url",
        :name => "Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of lookups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
