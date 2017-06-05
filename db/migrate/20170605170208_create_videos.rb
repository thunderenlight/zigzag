class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.belongs_to :user, foreign_key: true
      t.string :uid
      t.decimal :duration, scale: 2, precision: 5
      t.datetime :ziggeo_created_at
      t.boolean :approved, default: false

      t.timestamps
    end

    add_index :videos, :approved
    add_index :videos, :uid, unique: true
  end
end
