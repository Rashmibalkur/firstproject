class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.integer :aid
      t.text :aname

      t.timestamps
    end
  end
end
