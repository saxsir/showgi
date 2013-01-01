class CreateKifus < ActiveRecord::Migration
  def change
    create_table :kifus do |t|
      t.integer :owner_id
      t.string :title
      t.string :file_url

      t.timestamps
    end
  end
end
