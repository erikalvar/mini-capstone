class ChangeImageIdToProductIdInImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :image_id, :product_id
  end
end
