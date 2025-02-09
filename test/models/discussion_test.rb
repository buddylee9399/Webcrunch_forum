# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  content    :text
#  slug       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  channel_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_discussions_on_channel_id  (channel_id)
#  index_discussions_on_slug        (slug) UNIQUE
#  index_discussions_on_user_id     (user_id)
#
# Foreign Keys
#
#  channel_id  (channel_id => channels.id)
#  user_id     (user_id => users.id)
#
require "test_helper"

class DiscussionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
