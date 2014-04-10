class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :resume_name
      t.date :date_created
      t.string :user_name
      t.string :email
      t.string :phone
      t.string :address
      t.references :user, index: true

      t.timestamps
    end
  end
end
