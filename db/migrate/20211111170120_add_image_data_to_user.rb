class AddImageDataToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image_data, :string
  end
end
