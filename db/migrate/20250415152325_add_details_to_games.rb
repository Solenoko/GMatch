class AddDetailsToGames < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :platform, :string
    add_column :games, :players, :integer
  end
end
