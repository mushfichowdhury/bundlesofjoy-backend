class CreateNaps < ActiveRecord::Migration[6.0]
  def change
    create_table :naps do |t|
      t.integer :child_id
      t.string :duration

      t.timestamps
    end
  end
end
