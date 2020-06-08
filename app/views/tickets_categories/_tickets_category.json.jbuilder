json.extract! tickets_category, :id, :ticket_id, :category_id, :created_at, :updated_at
json.url tickets_category_url(tickets_category, format: :json)
