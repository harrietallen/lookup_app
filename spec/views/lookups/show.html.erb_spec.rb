require 'spec_helper'

describe "lookups/show" do
  before(:each) do
    @lookup = assign(:lookup, stub_model(Lookup,
      :url => "Url",
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
