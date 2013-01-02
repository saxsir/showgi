class AddCsaToKifus < ActiveRecord::Migration
  def change
    add_column :kifus, :csa, :text
  end
end
