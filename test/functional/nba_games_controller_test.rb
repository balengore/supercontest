require 'test_helper'

class NbaGamesControllerTest < ActionController::TestCase
  setup do
    @nba_game = nba_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nba_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nba_game" do
    assert_difference('NbaGame.count') do
      post :create, :nba_game => { :away_ats_losses => @nba_game.away_ats_losses, :away_ats_losses_away => @nba_game.away_ats_losses_away, :away_ats_pushes => @nba_game.away_ats_pushes, :away_ats_pushes_away => @nba_game.away_ats_pushes_away, :away_ats_streak => @nba_game.away_ats_streak, :away_ats_streak_away => @nba_game.away_ats_streak_away, :away_ats_wins => @nba_game.away_ats_wins, :away_ats_wins_away => @nba_game.away_ats_wins_away, :away_losses => @nba_game.away_losses, :away_over_streak => @nba_game.away_over_streak, :away_over_streak_away => @nba_game.away_over_streak_away, :away_overs => @nba_game.away_overs, :away_overs_away => @nba_game.away_overs_away, :away_team_id => @nba_game.away_team_id, :away_unders => @nba_game.away_unders, :away_unders_away => @nba_game.away_unders_away, :away_win_streak => @nba_game.away_win_streak, :away_win_streak_away => @nba_game.away_win_streak_away, :away_wins => @nba_game.away_wins, :away_wins_away => @nba_game.away_wins_away, :home_ats_losses => @nba_game.home_ats_losses, :home_ats_losses_home => @nba_game.home_ats_losses_home, :home_ats_pushes => @nba_game.home_ats_pushes, :home_ats_pushes_home => @nba_game.home_ats_pushes_home, :home_ats_streak => @nba_game.home_ats_streak, :home_ats_streak_home => @nba_game.home_ats_streak_home, :home_ats_wins => @nba_game.home_ats_wins, :home_ats_wins_home => @nba_game.home_ats_wins_home, :home_losses => @nba_game.home_losses, :home_over_streak => @nba_game.home_over_streak, :home_over_streak_home => @nba_game.home_over_streak_home, :home_overs => @nba_game.home_overs, :home_overs_home => @nba_game.home_overs_home, :home_team_id => @nba_game.home_team_id, :home_unders => @nba_game.home_unders, :home_unders_home => @nba_game.home_unders_home, :home_win_streak => @nba_game.home_win_streak, :home_win_streak_home => @nba_game.home_win_streak_home, :home_wins => @nba_game.home_wins, :home_wins_home => @nba_game.home_wins_home, :integer => @nba_game.integer }
    end

    assert_redirected_to nba_game_path(assigns(:nba_game))
  end

  test "should show nba_game" do
    get :show, :id => @nba_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nba_game
    assert_response :success
  end

  test "should update nba_game" do
    put :update, :id => @nba_game, :nba_game => { :away_ats_losses => @nba_game.away_ats_losses, :away_ats_losses_away => @nba_game.away_ats_losses_away, :away_ats_pushes => @nba_game.away_ats_pushes, :away_ats_pushes_away => @nba_game.away_ats_pushes_away, :away_ats_streak => @nba_game.away_ats_streak, :away_ats_streak_away => @nba_game.away_ats_streak_away, :away_ats_wins => @nba_game.away_ats_wins, :away_ats_wins_away => @nba_game.away_ats_wins_away, :away_losses => @nba_game.away_losses, :away_over_streak => @nba_game.away_over_streak, :away_over_streak_away => @nba_game.away_over_streak_away, :away_overs => @nba_game.away_overs, :away_overs_away => @nba_game.away_overs_away, :away_team_id => @nba_game.away_team_id, :away_unders => @nba_game.away_unders, :away_unders_away => @nba_game.away_unders_away, :away_win_streak => @nba_game.away_win_streak, :away_win_streak_away => @nba_game.away_win_streak_away, :away_wins => @nba_game.away_wins, :away_wins_away => @nba_game.away_wins_away, :home_ats_losses => @nba_game.home_ats_losses, :home_ats_losses_home => @nba_game.home_ats_losses_home, :home_ats_pushes => @nba_game.home_ats_pushes, :home_ats_pushes_home => @nba_game.home_ats_pushes_home, :home_ats_streak => @nba_game.home_ats_streak, :home_ats_streak_home => @nba_game.home_ats_streak_home, :home_ats_wins => @nba_game.home_ats_wins, :home_ats_wins_home => @nba_game.home_ats_wins_home, :home_losses => @nba_game.home_losses, :home_over_streak => @nba_game.home_over_streak, :home_over_streak_home => @nba_game.home_over_streak_home, :home_overs => @nba_game.home_overs, :home_overs_home => @nba_game.home_overs_home, :home_team_id => @nba_game.home_team_id, :home_unders => @nba_game.home_unders, :home_unders_home => @nba_game.home_unders_home, :home_win_streak => @nba_game.home_win_streak, :home_win_streak_home => @nba_game.home_win_streak_home, :home_wins => @nba_game.home_wins, :home_wins_home => @nba_game.home_wins_home, :integer => @nba_game.integer }
    assert_redirected_to nba_game_path(assigns(:nba_game))
  end

  test "should destroy nba_game" do
    assert_difference('NbaGame.count', -1) do
      delete :destroy, :id => @nba_game
    end

    assert_redirected_to nba_games_path
  end
end
