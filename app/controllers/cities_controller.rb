class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @baseball_teams = @city.teams.where(baseball: true)
    @football_teams = @city.teams.where(football: true)
  end

  def edit
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to cities_path
    else
      redirect_to new_city_path
    end

  end

  def destroy
    @city = City.find(params[:id])

    if @city.delete
      redirect_to cities_path, notice: "GONE!"
    else
      redirect_to city_path, notice: "try again senor"
    end
  end



  private

  def city_params
    params.require(:city).permit(:name)
  end

end
