require 'rails_helper'

RSpec.describe "page_views/edit", type: :view do
  before(:each) do
    @page_view = assign(:page_view, PageView.create!(
      :path => "MyString",
      :hash_identity => "MyString"
    ))
  end

  it "renders the edit page_view form" do
    render

    assert_select "form[action=?][method=?]", page_view_path(@page_view), "post" do

      assert_select "input#page_view_path[name=?]", "page_view[path]"

      assert_select "input#page_view_hash_identity[name=?]", "page_view[hash_identity]"
    end
  end
end
