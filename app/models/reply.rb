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
class Reply < ApplicationRecord
  belongs_to :discussion
  belongs_to :user
  validates :reply, presence: true

  extend FriendlyId
  friendly_id :reply, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    reply_changed?
  end

end
