class AddDetailsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :weakestSubject, :string
    add_column :students, :favoriteSubject, :string
  end
end
