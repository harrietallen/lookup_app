class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.string :url
      t.string :name
      t.date :date_saved
      t.integer :user_id

      t.timestamps
    end
  end
end
