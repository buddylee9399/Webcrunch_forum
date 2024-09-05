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
class Discussion < ApplicationRecord
  belongs_to :channel
  belongs_to :user
  has_many :replies, dependent: :destroy

  validates :title, :content, presence: true
  resourcify

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    title_changed?
  end
end
