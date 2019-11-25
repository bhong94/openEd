class AddSubjectsToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :subjects, :text, array: true, default: []
  end
end
