class AddBgRoleToBgSetups < ActiveRecord::Migration
  def self.up
     add_column :bg_setups, :bg_role, :string
     add_column :bg_setups, :bg_dept1, :string
     add_column :bg_setups, :bg_dept2, :string
  end

  def self.down
    remove_column :bg_setups, :bg_role
    remove_column :bg_setups, :bg_dept1  #Main dept. for users setting
    remove_column :bg_setups, :bg_dept2
  end
end
