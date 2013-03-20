class RenameColumnDone < ActiveRecord::Migration
  def change
    rename_column :todos, :done, :task_done
  end
end
