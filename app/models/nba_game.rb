class NbaGame < ActiveRecord::Base
  belongs_to  :away_team, :class_name => "NbaTeam"
  belongs_to  :home_team, :class_name => "NbaTeam"

  def home_team_name
    home_team.name
  end

  def away_team_name
    away_team.name
  end

  def home_won
    home_score > away_score
  end

  def away_won
    away_score > home_score
  end

  def home_covered
    home_score + home_spread > away_score
  end

  def away_covered
    away_score - home_spread > home_score
  end

  def cover_team
    return home_team if home_covered
    return away_team if away_covered
    return nil
  end

  def self.for_team team_id
    where("away_team_id = #{team_id} or home_team_id = #{team_id}").all
  end
end
