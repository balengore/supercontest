require 'test_helper'

class NbaTeamsControllerTest < ActionController::TestCase
  setup do
    @nba_team = nba_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nba_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nba_team" do
    assert_difference('NbaTeam.count') do
      post :create, :nba_team => { :away_ats_losses => @nba_team.away_ats_losses, :away_ats_pushes => @nba_team.away_ats_pushes, :away_ats_wins => @nba_team.away_ats_wins, :away_losses => @nba_team.away_losses, :away_over_under_pushes => @nba_team.away_over_under_pushes, :away_overs => @nba_team.away_overs, :away_unders => @nba_team.away_unders, :away_wins => @nba_team.away_wins, :home_ats_losses => @nba_team.home_ats_losses, :home_ats_pushes => @nba_team.home_ats_pushes, :home_ats_wins => @nba_team.home_ats_wins, :home_losses => @nba_team.home_losses, :home_over_under_pushes => @nba_team.home_over_under_pushes, :home_overs => @nba_team.home_overs, :home_unders => @nba_team.home_unders, :home_wins => @nba_team.home_wins, :name => @nba_team.name, :season => @nba_team.season }
    end

    assert_redirected_to nba_team_path(assigns(:nba_team))
  end

  test "should show nba_team" do
    get :show, :id => @nba_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nba_team
    assert_response :success
  end

  test "should update nba_team" do
    put :update, :id => @nba_team, :nba_team => { :away_ats_losses => @nba_team.away_ats_losses, :away_ats_pushes => @nba_team.away_ats_pushes, :away_ats_wins => @nba_team.away_ats_wins, :away_losses => @nba_team.away_losses, :away_over_under_pushes => @nba_team.away_over_under_pushes, :away_overs => @nba_team.away_overs, :away_unders => @nba_team.away_unders, :away_wins => @nba_team.away_wins, :home_ats_losses => @nba_team.home_ats_losses, :home_ats_pushes => @nba_team.home_ats_pushes, :home_ats_wins => @nba_team.home_ats_wins, :home_losses => @nba_team.home_losses, :home_over_under_pushes => @nba_team.home_over_under_pushes, :home_overs => @nba_team.home_overs, :home_unders => @nba_team.home_unders, :home_wins => @nba_team.home_wins, :name => @nba_team.name, :season => @nba_team.season }
    assert_redirected_to nba_team_path(assigns(:nba_team))
  end

  test "should destroy nba_team" do
    assert_difference('NbaTeam.count', -1) do
      delete :destroy, :id => @nba_team
    end

    assert_redirected_to nba_teams_path
  end
end
