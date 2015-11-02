class PlayspacesController < ApplicationController
  before_action :set_category

  def index
    @playspaces = @category.playspaces
  end

  def show
    @playspace = @category.playspaces.find(params[:id])
  end

  def new
    @playspace = @category.playspaces.new
  end

  def create
    @playspace = @category.playspaces.new(playspaces_params)
    if @playspace.save
      redirect_to category_playspace_path(@playspace.category_id, @playspace.id)
    else
      render :new
    end
  end

  private
  def set_category
    @category = Category.find(params[:category_id])
  end

  def playspaces_params
    params.require(:playspace).permit(:name, :address, :district, :region, :bike_path, :merry_go_round, :play_structure, :seesaw, :slide, :swing, :carpark, :snack_shop, :wc, :category_id)
  end

end
