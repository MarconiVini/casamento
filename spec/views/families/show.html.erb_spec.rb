require 'spec_helper'

describe "families/show" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
