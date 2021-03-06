# == Schema Information
#
# Table name: blog_threads
#
#  id          :integer          not null, primary key
#  title       :string
#  posts_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BlogThread < ApplicationRecord
  has_many :posts
  validates_presence_of :title

end
