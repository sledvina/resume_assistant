require "spec_helper"

describe EducationEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/education_entries").should route_to("education_entries#index")
    end

    it "routes to #new" do
      get("/education_entries/new").should route_to("education_entries#new")
    end

    it "routes to #show" do
      get("/education_entries/1").should route_to("education_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/education_entries/1/edit").should route_to("education_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/education_entries").should route_to("education_entries#create")
    end

    it "routes to #update" do
      put("/education_entries/1").should route_to("education_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/education_entries/1").should route_to("education_entries#destroy", :id => "1")
    end

  end
end
