class CreateWorkEntries < ActiveRecord::Migration
  def change
    create_table :work_entries do |t|
      t.string :Position
      t.string :Company
      t.string :start_date
      t.string :end_date
      t.string :description
      t.references :resume, index: true
      
      t.timestamps
    end
  end
end
