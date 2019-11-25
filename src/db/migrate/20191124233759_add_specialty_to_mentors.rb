class AddSpecialtyToMentors < ActiveRecord::Migration[5.2]
  def change
    add_column :mentors, :specialty, :string
  end
end
