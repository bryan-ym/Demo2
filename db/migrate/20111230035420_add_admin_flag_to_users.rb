class AddAdminFlagToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :admin_flag, :boolean, :default=>false, :null=>false
    
  end

  def self.down
    remove_column :users, :admin_flag
  end
end
