class CreateFeedings < ActiveRecord::Migration[6.0]
  def change
    create_table :feedings do |t|
      t.integer :child_id
      t.string :feeding_method
      t.string :duration
      t.integer :amount

      t.timestamps
    end
  end
end
