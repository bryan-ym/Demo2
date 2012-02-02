class CreateNeedsUsers < ActiveRecord::Migration
  def self.up
    create_table :needs_users, :id=>false do |t|
      t.integer :need_id, :null=>false
      t.integer :user_id, :null=>false
    end  
      add_index :needs_users, [:need_id, :user_id], :unique=>true
    
  end

  

  def self.down
    remove_index :needs_users, :column=>[:need_id, :user_id]
    drop_table :needs_users
  end
end
