class CreateDiapers < ActiveRecord::Migration[6.0]
  def change
    create_table :diapers do |t|
      t.integer :child_id
      t.string :texture
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
