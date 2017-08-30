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

FactoryGirl.define do
  factory :post do
    title 'Kek'
    body  'Mda'
    blog_thread_id 1
  end
end
