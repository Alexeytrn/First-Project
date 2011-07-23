require "spec_helper"

describe CategoryPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/category_posts").should route_to("category_posts#index")
    end

    it "routes to #new" do
      get("/category_posts/new").should route_to("category_posts#new")
    end

    it "routes to #show" do
      get("/category_posts/1").should route_to("category_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/category_posts/1/edit").should route_to("category_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/category_posts").should route_to("category_posts#create")
    end

    it "routes to #update" do
      put("/category_posts/1").should route_to("category_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/category_posts/1").should route_to("category_posts#destroy", :id => "1")
    end

  end
end
