json.extract! category, :id, :name, :price, :food, :created_at, :updated_at
json.url category_url(category, format: :json)