class AddCloudinaryPublicIdToGames < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :cloudinary_public_id, :string
  end
end
