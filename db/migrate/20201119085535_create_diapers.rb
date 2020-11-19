class CreateDiapers < ActiveRecord::Migration[6.0]
  def change
    create_table :diapers do |t|
      t.integer :children_id
      t.date :date
      t.time :time
      t.string :quality
      t.string :color

      t.timestamps
    end
  end
end
