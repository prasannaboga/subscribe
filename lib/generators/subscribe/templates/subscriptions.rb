class CreateSubscription < ActiveRecord::Migration
  def self.up
    create_table :team_members do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :team_members
  end
end