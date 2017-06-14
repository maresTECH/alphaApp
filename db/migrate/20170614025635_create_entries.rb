class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :name
      t.text :detail

      t.timestamps
    end
  end
end
