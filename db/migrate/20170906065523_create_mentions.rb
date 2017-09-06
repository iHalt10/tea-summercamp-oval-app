class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.references :newsID, index: true
      t.references :userID, index: true
      t.string :content
      t.integer :sorena

      t.timestamps null: false
    end
  end
end
