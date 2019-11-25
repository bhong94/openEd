class Chat < ApplicationRecord
  belongs_to :student, class_name: 'Student'
  belongs_to :mentor, class_name: 'Mentor'

  has_many :messages, foreign_key: :chat_id
end
