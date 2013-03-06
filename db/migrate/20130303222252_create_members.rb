class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :family_id
      t.boolean :confirmado, default: false

      t.timestamps
    end
  end
end
