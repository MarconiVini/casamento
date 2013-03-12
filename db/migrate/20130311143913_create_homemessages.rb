class CreateHomemessages < ActiveRecord::Migration
  def change
    create_table :homemessages do |t|
      t.string :name
      t.string :message
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
