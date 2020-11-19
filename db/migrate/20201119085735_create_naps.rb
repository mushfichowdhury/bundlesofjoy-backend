class CreateNaps < ActiveRecord::Migration[6.0]
  def change
    create_table :naps do |t|
      t.integer :children_id
      t.date :date
      t.time :time
      t.string :duration

      t.timestamps
    end
  end
end
