require 'spec_helper'

describe "administrador/families/new" do
  before(:each) do
    assign(:administrador_family, stub_model(Administrador::Family,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new administrador_family form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => administrador_families_path, :method => "post" do
      assert_select "input#administrador_family_name", :name => "administrador_family[name]"
    end
  end
end
