class CreateBoks < ActiveRecord::Migration[5.1]
  def change
    create_table :boks do |t|
      t.text :name
      t.text :pt
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
