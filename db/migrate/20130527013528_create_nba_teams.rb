class CreateNbaTeams < ActiveRecord::Migration
  def change
    create_table :nba_teams do |t|
      t.string :name
      t.string :season
      t.integer :home_wins
      t.integer :home_losses
      t.integer :away_wins
      t.integer :away_losses
      t.integer :home_ats_wins
      t.integer :home_ats_losses
      t.integer :home_ats_pushes
      t.integer :away_ats_wins
      t.integer :away_ats_losses
      t.integer :away_ats_pushes
      t.integer :home_overs
      t.integer :home_unders
      t.integer :away_overs
      t.integer :home_over_under_pushes
      t.integer :away_unders
      t.integer :away_over_under_pushes

      t.timestamps
    end
  end
end
