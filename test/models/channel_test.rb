# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  channel    :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_channels_on_slug  (slug) UNIQUE
#
require "test_helper"

class ChannelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
