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

FactoryGirl.define do
  factory :blog_thread do
    title 'kek'
    posts_count 4
  end
end
