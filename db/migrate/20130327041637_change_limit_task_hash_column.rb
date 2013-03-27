class ChangeLimitTaskHashColumn < ActiveRecord::Migration
  def change
    change_column :todos, :task_hash, :string, :limit => 6
  end
end
