class AddHighPriorityToTodos < ActiveRecord::Migration[8.0]
  def change
    add_column :todos, :high_priority, :boolean, default: false, null: false
  end
end
