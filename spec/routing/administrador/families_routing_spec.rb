require "spec_helper"

describe Administrador::FamiliesController do
  describe "routing" do

    it "routes to #index" do
      get("/administrador/families").should route_to("administrador/families#index")
    end

    it "routes to #new" do
      get("/administrador/families/new").should route_to("administrador/families#new")
    end

    it "routes to #show" do
      get("/administrador/families/1").should route_to("administrador/families#show", :id => "1")
    end

    it "routes to #edit" do
      get("/administrador/families/1/edit").should route_to("administrador/families#edit", :id => "1")
    end

    it "routes to #create" do
      post("/administrador/families").should route_to("administrador/families#create")
    end

    it "routes to #update" do
      put("/administrador/families/1").should route_to("administrador/families#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/administrador/families/1").should route_to("administrador/families#destroy", :id => "1")
    end

  end
end
