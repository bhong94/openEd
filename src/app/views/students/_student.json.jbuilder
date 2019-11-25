json.extract! student, :id, :name, :bio, :budget, :location, :created_at, :updated_at
json.url student_url(student, format: :json)
