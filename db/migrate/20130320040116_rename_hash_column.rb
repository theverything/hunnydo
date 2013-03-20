class RenameHashColumn < ActiveRecord::Migration
  def change
    rename_column :todos, :hash, :task_hash
  end
end
