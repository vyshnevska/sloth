class AddFieldKeyToCrumbs < ActiveRecord::Migration
  def change
    add_column :crumbs, :field_key, :string
  end
end
