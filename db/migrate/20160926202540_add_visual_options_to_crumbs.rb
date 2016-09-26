class AddVisualOptionsToCrumbs < ActiveRecord::Migration
  def change
    add_column :crumbs, :visual_options, :hstore
  end
end
