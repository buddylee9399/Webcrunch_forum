class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels do |t|
      t.string :channel
      t.references :discussion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
