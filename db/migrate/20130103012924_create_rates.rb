class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :kifu_id
      t.integer :rate

      t.timestamps
    end
  end
end
