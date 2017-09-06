class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :sessionID
      t.string :title
      t.string :link
      t.time :putDate

      t.timestamps null: false
      
      t.index :sessionID, unique: true
    end
  end
end
