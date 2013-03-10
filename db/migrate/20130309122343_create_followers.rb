class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :name
      t.integer :family_id
      t.string :description
      t.timestamps
    end
  end
end
