class AddChannelReferencesToDiscussions < ActiveRecord::Migration[7.0]
  def change
    add_reference :discussions, :channel, null: false, foreign_key: true
  end
end
