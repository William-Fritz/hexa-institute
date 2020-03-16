json.extract! student, :id, :name, :program, :total_credits, :created_at, :updated_at
json.url student_url(student, format: :json)
