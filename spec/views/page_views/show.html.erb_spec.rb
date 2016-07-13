require 'rails_helper'

RSpec.describe "page_views/show", type: :view do
  before(:each) do
    @page_view = assign(:page_view, PageView.create!(
      :path => "Path",
      :hash_identity => "Hash Identity"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Path/)
    expect(rendered).to match(/Hash Identity/)
  end
end
