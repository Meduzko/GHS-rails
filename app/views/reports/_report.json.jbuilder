json.extract! report, :id, :title, :file, :content, :created_at, :updated_at
json.url report_url(report, format: :json)
