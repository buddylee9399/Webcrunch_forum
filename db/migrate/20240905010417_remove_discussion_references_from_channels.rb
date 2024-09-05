class RemoveDiscussionReferencesFromChannels < ActiveRecord::Migration[7.0]
  def change
    remove_reference :channels, :discussion, null: false, foreign_key: true
  end
end
