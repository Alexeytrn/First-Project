require 'spec_helper'

describe "category_posts/new.html.erb" do
  before(:each) do
    assign(:category_post, stub_model(CategoryPost,
      :post_id => 1,
      :category_id => 1
    ).as_new_record)
  end

  it "renders new category_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => category_posts_path, :method => "post" do
      assert_select "input#category_post_post_id", :name => "category_post[post_id]"
      assert_select "input#category_post_category_id", :name => "category_post[category_id]"
    end
  end
end
