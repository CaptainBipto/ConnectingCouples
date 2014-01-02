class RenameStatusToContent < ActiveRecord::Migration
  def change
    rename_column :statuses, :status, :content
  end
end
