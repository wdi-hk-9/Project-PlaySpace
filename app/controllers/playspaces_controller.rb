class PlayspacesController < ApplicationController
  before_action :set_category

  def index
    if @category
      @playspaces = @category.playspaces
    else
      @playspaces = Playspace.all
    end
  end

  def show
    @playspace = Playspace.find(params[:id])
    @features = ["bike_path", "merry_go_round", "play_structure", "seesaw", "slide", "swing", "carpark", "snack_shop" "wc"]

  end

  def new
    @playspace = Playspace.new
    @categories = Category.all
  end

  def create
    @playspace = Playspace.new(playspaces_params)
    if @playspace.save
      redirect_to playspace_path(@playspace.id)
    else
      render :new
    end
  end

  private
  def set_category
    @category = Category.find(params[:category_id]) if params[:category_id]
  end

  def playspaces_params
    params.require(:playspace).permit(:name, :address, :district, :region, :bike_path, :merry_go_round, :play_structure, :seesaw, :slide, :swing, :carpark, :snack_shop, :wc, :category_id)
  end

end
