class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :bio
      t.money :budget
      t.string :location

      t.timestamps
    end
  end
end
