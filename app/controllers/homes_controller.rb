class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
  end

  def show
  end

  def new
    @home = Home.new
  end

  def create
    if @home = Home.create(home_params)
      flash[:success] = "Your post has been created!"
      redirect_to homes_path
    else
      flash.now[:alert] = "Your new post couldn't be created!  Please check the form."
      render :new
    end
  end

  def edit
  end

  def update
    if @home.update(home_params)
      flash[:success] = "Post updated."
      redirect_to homes_path
    else
      flash.now[:alert] = "Update failed.  Please check the form."
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_path
  end

  private

  def home_params
    params.require(:home).permit(:image, :title, :location, :about, :price)
  end

  def set_home
    @home = Home.find(params[:id])
  end
end
