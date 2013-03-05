require 'spec_helper'

describe "administrador/families/edit" do
  before(:each) do
    @administrador_family = assign(:administrador_family, stub_model(Administrador::Family,
      :name => "MyString"
    ))
  end

  it "renders the edit administrador_family form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => administrador_families_path(@administrador_family), :method => "post" do
      assert_select "input#administrador_family_name", :name => "administrador_family[name]"
    end
  end
end
