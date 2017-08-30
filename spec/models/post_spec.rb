# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  title          :string
#  body           :string
#  avatar_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  blog_thread_id :integer
#
# Indexes
#
#  index_posts_on_blog_thread_id  (blog_thread_id)
#

require 'rails_helper'

RSpec.describe Post, type: :model do

  it { should validate_presence_of :title}
  it { should validate_presence_of :body}
end
