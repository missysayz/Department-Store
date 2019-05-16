class CreateDepts < ActiveRecord::Migration[5.2]
  def change
    create_table :depts do |t|
      t.string :category
      t.text :description
      t.string :manager
      t.boolean :seasonal

      t.timestamps
    end
  end
end
