class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.integer         :value
      t.string          :outros
      t.string          :name
      t.string          :email
      t.string          :message
      t.timestamps
    end
  end
end
