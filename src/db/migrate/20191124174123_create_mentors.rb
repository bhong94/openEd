class CreateMentors < ActiveRecord::Migration[5.2]
  def change
    create_table :mentors do |t|
      t.string :firstName
      t.string :lastName
      t.text :bio
      t.money :hourlyWage
      t.string :collegeName
      t.string :major
      t.string :collegeYear
      t.binary :resume

      t.timestamps
    end
  end
end
