json.extract! event, :id, :title, :allday, :eventstart, :eventend, :occurence, :details, :featured, :created_at, :updated_at
json.url event_url(event, format: :json)
