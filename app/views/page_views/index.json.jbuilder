json.array!(@page_views) do |page_view|
  json.extract! page_view, :id, :path, :hash_identity
  json.url page_view_url(page_view, format: :json)
end
