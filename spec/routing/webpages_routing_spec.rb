require "spec_helper"

describe WebpagesController do
  describe "routing" do

    it "routes to #index" do
      get("/webpages").should route_to("webpages#index")
    end

    it "routes to #new" do
      get("/webpages/new").should route_to("webpages#new")
    end

    it "routes to #show" do
      get("/webpages/1").should route_to("webpages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/webpages/1/edit").should route_to("webpages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/webpages").should route_to("webpages#create")
    end

    it "routes to #update" do
      put("/webpages/1").should route_to("webpages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/webpages/1").should route_to("webpages#destroy", :id => "1")
    end

  end
end
