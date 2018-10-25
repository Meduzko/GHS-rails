json.extract! specialinfo, :id, :name, :description, :document_type, :user_access, :actioner_access, :created_at, :updated_at
json.url specialinfo_url(specialinfo, format: :json)
