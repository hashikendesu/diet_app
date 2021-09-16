class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.integer :target
      t.integer :current
      t.integer :intake
      t.integer :user_id,           null: false
      t.timestamps
    end
  end
end
