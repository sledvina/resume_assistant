class CreateActivityEntries < ActiveRecord::Migration
  def change
    create_table :activity_entries do |t|
      t.string :position
      t.string :organization
      t.string :start_date
      t.string :end_date
      t.string :description
      t.references :resume,index: true

      t.timestamps
    end
  end
end
