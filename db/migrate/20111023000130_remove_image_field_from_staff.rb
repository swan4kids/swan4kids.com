class RemoveImageFieldFromStaff < ActiveRecord::Migration
  def self.up
    remove_column :staff_members, :image_id
  end

  def self.down
    add_column :staff_members, :image_id, :integer
  end
end
