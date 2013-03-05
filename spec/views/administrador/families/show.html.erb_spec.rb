require 'spec_helper'

describe "administrador/families/show" do
  before(:each) do
    @administrador_family = assign(:administrador_family, stub_model(Administrador::Family,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
