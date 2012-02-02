class AddBgRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string
    add_column :users, :dept1, :string
    add_column :users, :dept2, :string
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :dept1  #Main dept. for users
    remove_column :users, :dept2
  end
end
