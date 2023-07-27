json.extract! blog, :id, :post, :like, :created_at, :updated_at
json.url blog_url(blog, format: :json)
