class NbaGamesController < ApplicationController
  # GET /nba_games
  # GET /nba_games.json
  def index
    @nba_games = NbaGame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nba_games }
    end
  end

  # GET /nba_games/1
  # GET /nba_games/1.json
  def show
    @nba_game = NbaGame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @nba_game }
    end
  end

  # GET /nba_games/new
  # GET /nba_games/new.json
  def new
    @nba_game = NbaGame.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nba_game }
    end
  end

  # GET /nba_games/1/edit
  def edit
    @nba_game = NbaGame.find(params[:id])
  end

  # POST /nba_games
  # POST /nba_games.json
  def create
    @nba_game = NbaGame.new(params[:nba_game])
    ap params
    ap @nba_game

    respond_to do |format|
      if @nba_game.save
        format.html { redirect_to @nba_game, :notice => 'Nba game was successfully created.' }
        format.json { render :json => @nba_game, :status => :created, :location => @nba_game }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nba_game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nba_games/1
  # PUT /nba_games/1.json
  def update
    @nba_game = NbaGame.find(params[:id])

    respond_to do |format|
      if @nba_game.update_attributes(params[:nba_game])
        format.html { redirect_to @nba_game, :notice => 'Nba game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nba_game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nba_games_find_and_update
  # PUT /nba_games_find_and_update.json
  def update_by_date_and_teams
    ap params
    @nba_game = NbaGame.where(:date_string => params[:date_string], :away_team_id => params[:away_team_id], 
      :home_team_id => params[:home_team_id]).first

    respond_to do |format|
      ap params[:nba_game]
      if @nba_game.update_attributes(params[:nba_game])
        format.html { redirect_to @nba_game, :notice => 'Nba game was successfully updated.' }
        format.json { render :json => "ok" }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nba_game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nba_games/1
  # DELETE /nba_games/1.json
  def destroy
    @nba_game = NbaGame.find(params[:id])
    @nba_game.destroy

    respond_to do |format|
      format.html { redirect_to nba_games_url }
      format.json { head :no_content }
    end
  end
end
