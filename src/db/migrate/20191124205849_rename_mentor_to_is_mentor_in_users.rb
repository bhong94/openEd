class RenameMentorToIsMentorInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :mentor, :isMentor
  end
end
