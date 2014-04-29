class EducationEntries < ActiveRecord::Migration
  def change
    create_table :education_entries do |t|
      t.string :school
      t.string :graduation_date
      t.string :degree
      t.string :major
      t.string :gpa
      t.string :accolades

      t.timestamps
    end
  end
end