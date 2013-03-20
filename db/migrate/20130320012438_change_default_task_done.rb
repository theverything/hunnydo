class ChangeDefaultTaskDone < ActiveRecord::Migration
  def change
    change_column_default :todos, :task_done, false
  end
end
