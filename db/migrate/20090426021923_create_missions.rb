class CreateMissions < ActiveRecord::Migration
  def self.up
    create_table :missions do |t|
      t.belongs_to :customer
      t.belongs_to :messenger
      t.integer :status, :default => -1
      t.integer :rating, :default => 0
      t.string  :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :missions
  end
end
