class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.references :news, index: true
      t.references :user, index: true
      t.string :content
      t.integer :sorena

      t.timestamps null: false
    end
  end
end
