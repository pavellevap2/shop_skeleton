class AddThreadIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :thread_id, :integer
  end
end
