class EducationEntry < ActiveRecord::Migration
  def change
    create_table :education_entry do |t|
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
