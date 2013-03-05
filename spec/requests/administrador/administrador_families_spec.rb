require 'spec_helper'

describe "Administrador::Families" do
  describe "GET /administrador_families" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get administrador_families_path
      response.status.should be(200)
    end
  end
end
