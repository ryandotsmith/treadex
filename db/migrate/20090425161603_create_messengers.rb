class CreateMessengers < ActiveRecord::Migration
  def self.up
    create_table :messengers do |t|
      t.belongs_to :user
      t.string :name
      t.string :handle
      t.text :bio
      t.string :mobile
      t.string :rate
      t.string :rate_type
      t.string :neighborhood
      t.datetime :checked_in

      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :messengers
  end
end
