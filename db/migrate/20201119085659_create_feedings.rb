class CreateFeedings < ActiveRecord::Migration[6.0]
  def change
    create_table :feedings do |t|
      t.integer :children_id
      t.date :date
      t.time :time
      t.string :type
      t.string :duration
      t.integer :amount

      t.timestamps
    end
  end
end
