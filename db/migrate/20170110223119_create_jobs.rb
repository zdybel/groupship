class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :description
      t.string :origin
      t.float :cost
      t.string :destination
      t.integer :user_id
      t.integer :container_amount

      t.timestamps
    end
  end
end
