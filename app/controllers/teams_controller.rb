class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @createteam = Team.create(team_params)

    if @createteam.save
      redirect_to teams_path, notice: "nooiiiiice"
    else
      redirect_to new_team_path, notice: "ya fucked up"
    end
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to teams_path, "notice: yuuup"
    else
      redirect_to edit_team_path(@team.id)
    end
  end

  def destroy
    @team = Team.find(params[:id])

    if @team.delete
      redirect_to teams_path, notice: "GONE!"
    else
      redirect_to edit_team_path, notice: "try again senor"
    end
  end

  private
  def team_params
    params.require(:team).permit(:name, :city)
  end


end
