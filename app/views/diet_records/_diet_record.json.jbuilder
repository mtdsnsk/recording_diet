json.extract! diet_record, :id, :title, :author, :created_at, :updated_at
json.url diet_record_url(diet_record, format: :json)
