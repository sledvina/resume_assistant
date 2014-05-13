require "spec_helper"

describe ActivityEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/activity_entries").should route_to("activity_entries#index")
    end

    it "routes to #new" do
      get("/activity_entries/new").should route_to("activity_entries#new")
    end

    it "routes to #show" do
      get("/activity_entries/1").should route_to("activity_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/activity_entries/1/edit").should route_to("activity_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/activity_entries").should route_to("activity_entries#create")
    end

    it "routes to #update" do
      put("/activity_entries/1").should route_to("activity_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/activity_entries/1").should route_to("activity_entries#destroy", :id => "1")
    end

  end
end
