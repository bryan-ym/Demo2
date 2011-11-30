class CreateNeeds < ActiveRecord::Migration
  def self.up
    create_table :needs do |t|
      t.string :title
      t.text :description
      t.string :productline
      t.string :submitter
      t.string :s_phone
      t.string :s_address
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :needs
  end
end
