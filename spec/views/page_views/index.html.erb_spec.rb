require 'rails_helper'

RSpec.describe "page_views/index", type: :view do
  before(:each) do
    assign(:page_views, [
      PageView.create!(
        :path => "Path",
        :hash_identity => "Hash Identity"
      ),
      PageView.create!(
        :path => "Path",
        :hash_identity => "Hash Identity"
      )
    ])
  end

  it "renders a list of page_views" do
    render
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Hash Identity".to_s, :count => 2
  end
end
