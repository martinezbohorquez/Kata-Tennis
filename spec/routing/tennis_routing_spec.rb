require "spec_helper"

describe TennisController do
  describe "routing" do

    it "routes to #index" do
      get("/tennis").should route_to("tennis#index")
    end

    it "routes to #new" do
      get("/tennis/new").should route_to("tennis#new")
    end

    it "routes to #show" do
      get("/tennis/1").should route_to("tennis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tennis/1/edit").should route_to("tennis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tennis").should route_to("tennis#create")
    end

    it "routes to #update" do
      put("/tennis/1").should route_to("tennis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tennis/1").should route_to("tennis#destroy", :id => "1")
    end

  end
end
