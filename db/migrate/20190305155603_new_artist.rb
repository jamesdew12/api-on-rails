class NewArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :artist do |t|
      t.string :name, null:false
      t.text :description, null:false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps null: false
  end

  add_index :artist, [:user_id, :name]
end
