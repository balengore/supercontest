class AddFieldsToNbaGame < ActiveRecord::Migration
  def change
    add_column :nba_games, :espn_game_id, :string
  end
end
