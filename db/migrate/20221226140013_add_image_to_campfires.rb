class AddImageToCampfires < ActiveRecord::Migration[6.1]
  def change
    add_column :campfires, :image, :string
  end
end
