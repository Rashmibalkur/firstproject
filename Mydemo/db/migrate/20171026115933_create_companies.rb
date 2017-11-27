class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :Department
      t.integer :Did

      t.timestamps
    end
  end
end
