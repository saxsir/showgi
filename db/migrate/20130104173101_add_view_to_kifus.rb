class AddViewToKifus < ActiveRecord::Migration
  def change
    add_column :kifus, :view, :integer
  end
end
