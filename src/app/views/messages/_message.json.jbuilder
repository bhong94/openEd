json.extract! message, :id, :body, :chat_id, :created_at, :updated_at
json.url message_url(message, format: :json)
