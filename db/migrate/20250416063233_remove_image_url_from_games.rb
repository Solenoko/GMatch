class RemoveImageUrlFromGames < ActiveRecord::Migration[8.0]
  def change
    remove_column :games, :image_url, :string
  end
end
