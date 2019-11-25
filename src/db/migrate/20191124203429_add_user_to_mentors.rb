class AddUserToMentors < ActiveRecord::Migration[5.2]
  def change
    add_reference :mentors, :user_id, index: true, foreign_key: { to_table: :users }
  end
end
