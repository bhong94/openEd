class AddNamesToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :studentName, :string
    add_column :chats, :mentorName, :string
  end
end
