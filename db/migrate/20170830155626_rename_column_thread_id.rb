class RenameColumnThreadId < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :thread_id, :blog_thread_id
  end
end
