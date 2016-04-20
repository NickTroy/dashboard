class DeviseAddLastseenableVendor < ActiveRecord::Migration
  def self.up
    add_column :vendors, :last_seen, :datetime
  end
  
  def self.down
    remove_column :vendors, :last_seen
  end
end