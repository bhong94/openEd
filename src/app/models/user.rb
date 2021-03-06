class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,      # this code was generated by the gem - 'devise'
         :recoverable, :rememberable, :validatable
  
  # create account associations
  has_one :mentor, foreign_key: :user_id
  has_one :student, foreign_key: :user_id
  
end
