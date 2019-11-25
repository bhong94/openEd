class AddSubjectsToMentor < ActiveRecord::Migration[5.2]
  def change
    add_column :mentors, :subjects, :text, array: true, default: []
  end
end
