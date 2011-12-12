class Addreviewertoneeds < ActiveRecord::Migration
  def self.up
    add_column :needs, :reviewornot, :boolean
    add_column :needs, :reviewer, :string
  end

  def self.down
    remove_column :needs, :reviewornot
    remove_column :needs, :reviewer
  end
end
