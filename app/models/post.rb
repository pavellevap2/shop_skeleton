class Post < ApplicationRecord
  belongs_to :blog_thread, foreign_key: :thread_id
  validates :title, :body, presence: true


end
