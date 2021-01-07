json.extract! post, :id, :image, :store_name, :review, :taste, :service, :cost, :atmosphere, :access, :created_at, :updated_at
json.url post_url(post, format: :json)
