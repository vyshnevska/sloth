class CreateCrumbs < ActiveRecord::Migration
  def change
    create_table :crumbs do |t|
      t.integer :number
      t.text :label
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
