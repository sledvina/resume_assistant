class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :resume, index: true

      t.timestamps
    end
  end
end
