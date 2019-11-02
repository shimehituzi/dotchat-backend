class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :room
      t.text :text, null: false, defalt: "this is empty comment"

      t.timestamps
    end
  end
end
