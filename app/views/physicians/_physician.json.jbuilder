json.extract! physician, :id, :name, :specialty, :address, :zip, :phone, :created_at, :updated_at
json.url physician_url(physician, format: :json)
