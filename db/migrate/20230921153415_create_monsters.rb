class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image_url
      t.string :origin
      t.string :description
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
