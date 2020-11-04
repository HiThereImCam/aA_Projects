class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :text, null: false
      t.integer :question_id, null: false
      t.timestamps
    end

    add_index :users, :text, unique: true 
  end
end
