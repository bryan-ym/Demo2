class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title
      t.text :description
      t.string :submitter
      t.text :submitter_info
      t.text :final_req
      t.string :status

      t.timestamps
    end
  end
end
