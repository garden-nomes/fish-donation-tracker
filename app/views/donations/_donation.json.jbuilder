json.extract! donation, :id, :donor_id, :category_id, :weight, :created_at, :updated_at
json.url donation_url(donation, format: :json)