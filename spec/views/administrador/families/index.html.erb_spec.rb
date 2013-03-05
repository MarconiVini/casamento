require 'spec_helper'

describe "administrador/families/index" do
  before(:each) do
    assign(:administrador_families, [
      stub_model(Administrador::Family,
        :name => "Name"
      ),
      stub_model(Administrador::Family,
        :name => "Name"
      )
    ])
  end

  it "renders a list of administrador/families" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
