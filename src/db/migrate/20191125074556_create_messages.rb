class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :chat, index: true, foreign_key: { to_table: :chats }

      t.timestamps
    end
  end
end
