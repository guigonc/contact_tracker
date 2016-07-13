require 'rails_helper'

RSpec.describe "page_views/new", type: :view do
  before(:each) do
    assign(:page_view, PageView.new(
      :path => "MyString",
      :hash_identity => "MyString"
    ))
  end

  it "renders new page_view form" do
    render

    assert_select "form[action=?][method=?]", page_views_path, "post" do

      assert_select "input#page_view_path[name=?]", "page_view[path]"

      assert_select "input#page_view_hash_identity[name=?]", "page_view[hash_identity]"
    end
  end
end
