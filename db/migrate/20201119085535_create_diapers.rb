class CreateDiapers < ActiveRecord::Migration[6.0]
  def change
    create_table :diapers do |t|
      t.integer :child_id
      t.boolean :wet
      t.boolean :solid
      t.string :color

      t.timestamps
    end
  end
end
