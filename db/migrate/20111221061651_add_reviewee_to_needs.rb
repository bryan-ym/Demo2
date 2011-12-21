class AddRevieweeToNeeds < ActiveRecord::Migration
  def self.up
    add_column :needs, :r_opinion, :text
    add_column :needs, :r_conclusion, :string
    add_column :needs, :r_result, :string
  end

  def self.down
    remove_column :needs, :r_opinion
    remove_column :needs, :r_conclusion
    remove_column :needs, :r_result
  end
end
