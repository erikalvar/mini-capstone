class AddImageIdToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :image_id, :integer
  end
end
