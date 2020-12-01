class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string  :title, presence: true
      t.string  :body, presence: true
      t.boolean :done, default: false

      t.timestamps
    end

    add_index :todos, :title
  end
end
