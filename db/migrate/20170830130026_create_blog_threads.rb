class CreateBlogThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_threads do |t|
      t.string :title
      t.integer :posts_count

      t.timestamps
    end
  end
end
