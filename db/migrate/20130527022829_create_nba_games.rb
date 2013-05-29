class CreateNbaGames < ActiveRecord::Migration
  def change
    create_table :nba_games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :start_time
      t.string :status
      t.string :date_string
      t.integer :home_score
      t.integer :away_score
      t.float :home_spread
      t.float :home_initial_spread
      t.float :over_under
      t.integer :home_ats_trend
      t.integer :home_ml_trend
      t.integer :over_trend
      t.integer :home_wins
      t.integer :home_losses
      t.integer :away_wins
      t.integer :away_losses
      t.integer :home_wins_home
      t.integer :away_wins_away
      t.integer :home_ats_wins
      t.integer :home_ats_losses
      t.integer :home_ats_pushes
      t.integer :home_ats_wins_home
      t.integer :home_ats_losses_home
      t.integer :home_ats_pushes_home
      t.integer :away_ats_wins
      t.integer :away_ats_losses
      t.integer :away_ats_pushes
      t.integer :away_ats_wins_away
      t.integer :away_ats_losses_away
      t.integer :away_ats_pushes_away
      t.integer :home_overs
      t.integer :home_unders
      t.integer :home_overs_home
      t.integer :home_unders_home
      t.integer :away_overs
      t.integer :away_unders
      t.integer :away_overs_away
      t.integer :away_unders_away
      t.integer :home_win_streak
      t.integer :home_win_streak_home
      t.integer :home_over_streak
      t.integer :home_over_streak_home
      t.integer :away_win_streak
      t.integer :away_win_streak_away
      t.integer :away_over_streak
      t.integer :away_over_streak_away
      t.integer :home_ats_streak
      t.integer :home_ats_streak_home
      t.integer :away_ats_streak
      t.integer :away_ats_streak_away

      t.timestamps
    end
  end
end
