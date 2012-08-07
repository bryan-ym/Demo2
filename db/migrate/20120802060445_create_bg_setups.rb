class CreateBgSetups < ActiveRecord::Migration
  def change
    create_table :bg_setups do |t|
      t.string :bg_status
      t.string :bg_productline
      t.string :bg_role
      t.string :br_dept1

      t.timestamps
    end
  end
end
