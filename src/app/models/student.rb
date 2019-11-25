class Student < ApplicationRecord
    belongs_to :user_id, class_name: 'User'

    has_many :chats, foreign_key: :student_id
end
