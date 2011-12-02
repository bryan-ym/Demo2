class AddCommentToNeed < ActiveRecord::Migration
  def self.up
    add_column :needs, :commentator, :string
    add_column :needs, :comment, :text
    add_column :needs, :finalreq, :text
  end

  def self.down
    remove_column :needs, :commentator
    remove_column :needs, :comment
    remove_column :needs, :finalreq
  end
end
