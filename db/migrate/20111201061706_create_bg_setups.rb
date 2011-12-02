class CreateBgSetups < ActiveRecord::Migration
  def self.up
    create_table :bg_setups do |t|
      t.string :bg_status
      t.string :bg_prdocutline

      t.timestamps
    end
  end

  def self.down
    drop_table :bg_setups
  end
end
