require 'spec_helper'

describe "category_posts/index.html.erb" do
  before(:each) do
    assign(:category_posts, [
      stub_model(CategoryPost,
        :post_id => 1,
        :category_id => 1
      ),
      stub_model(CategoryPost,
        :post_id => 1,
        :category_id => 1
      )
    ])
  end

  it "renders a list of category_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
