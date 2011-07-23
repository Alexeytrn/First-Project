require 'spec_helper'

describe "category_posts/show.html.erb" do
  before(:each) do
    @category_post = assign(:category_post, stub_model(CategoryPost,
      :post_id => 1,
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
