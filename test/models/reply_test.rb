# == Schema Information
#
# Table name: replies
#
#  id            :integer          not null, primary key
#  reply         :text
#  slug          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  discussion_id :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_replies_on_discussion_id  (discussion_id)
#  index_replies_on_slug           (slug) UNIQUE
#  index_replies_on_user_id        (user_id)
#
# Foreign Keys
#
#  discussion_id  (discussion_id => discussions.id)
#  user_id        (user_id => users.id)
#
require "test_helper"

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
