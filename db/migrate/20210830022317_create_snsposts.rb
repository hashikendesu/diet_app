class CreateSnsposts < ActiveRecord::Migration[6.0]
  def change
    create_table :snsposts do |t|
      t.string :text
      t.integer :user_id,           null: false
      t.timestamps
    end
  end
end
