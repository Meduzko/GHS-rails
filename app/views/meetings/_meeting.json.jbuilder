json.extract! meeting, :id, :announcement, :agenda, :consideration_docs, :solutions, :accepted_solutions, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
