json.extract! ticket, :id, :url, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)