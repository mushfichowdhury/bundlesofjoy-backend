class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.integer :user_id
      t.date :date
      t.time :time
      t.string :image
      t.string :content

      t.timestamps
    end
  end
end
