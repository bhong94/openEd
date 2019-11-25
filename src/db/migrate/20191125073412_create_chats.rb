class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :student, index: true, foreign_key: {to_table: :students}
      t.references :mentor, index: true, foreign_key: {to_table: :mentors}

      t.timestamps
    end
  end
end
