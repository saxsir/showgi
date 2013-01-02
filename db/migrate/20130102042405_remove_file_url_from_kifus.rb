class RemoveFileUrlFromKifus < ActiveRecord::Migration
  def up
    remove_column :kifus, :file_url
      end

  def down
    add_column :kifus, :file_url, :string
  end
end
