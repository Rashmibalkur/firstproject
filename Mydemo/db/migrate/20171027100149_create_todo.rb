class CreateTodo < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :name
    end

    add_column :todos, :description, :text
  end
end
