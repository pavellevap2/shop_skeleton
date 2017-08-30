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

require 'rails_helper'

RSpec.describe BlogThread, type: :model do
   describe 'checking valid or not' do
      it { should validate_presence_of :title}

   end
  describe 'checking associations' do
      it { should have_many(:posts)}
  end
end
