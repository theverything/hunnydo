class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :hash, limit: 5
      t.string :task
      t.boolean :done

      t.timestamps
    end
  end
end
