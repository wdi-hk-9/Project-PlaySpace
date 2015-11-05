class PlayspacesController < ApplicationController
  before_action :set_category

  def index
    if @category
      @playspaces = filter_queries(@category.playspaces)
    else
      @playspaces = filter_queries
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
    params.require(:playspace).permit(:name, :address, :district, :region, :bike_path, :merry_go_round, :play_structure, :seesaw, :slide, :swing, :carpark, :snack_shop, :wc, :category_id, :photo)
  end

  def filter_params
    params.require(:playspace).permit(:name, :district, :region, :category_id, :bike_path, :merry_go_round, :play_structure, :seesaw, :slide, :swing, :carpark, :snack_shop, :wc)
  end

  def filter_queries(results=nil)
    require 'wannabe_bool'
    results = results || Playspace.all

    if params[:playspace] != nil
      puts "started Filtering"
      f_params        = filter_params
      name            = f_params[:name]         == nil || f_params[:name]         == "" ? nil : f_params[:name].downcase
      region          = f_params[:region]       == nil || f_params[:region]       == "" ? nil : f_params[:region].downcase
      district        = f_params[:district]     == nil || f_params[:district]     == "" ? nil : f_params[:district].downcase
      category_id     = f_params[:category_id]  == nil || f_params[:category_id]  == "" ? nil : f_params[:category_id].to_i
      bike_path       = f_params[:bike_path].to_b
      merry_go_round  = f_params[:merry_go_round].to_b
      play_structure  = f_params[:play_structure].to_b
      seesaw          = f_params[:seesaw].to_b
      slide           = f_params[:slide].to_b
      swing           = f_params[:swing].to_b
      carpark         = f_params[:carpark].to_b
      snack_shop      = f_params[:snack_shop].to_b
      wc              = f_params[:wc].to_b

      results = results.where("name LIKE ?", '%' + name +'%') if name != nil
      results = results.where(region: region)                 if region != nil
      results = results.where(district: district)             if district != nil
      results = results.where(category_id: category_id)       if category_id != nil
      results = results.where(bike_path: bike_path)           if bike_path
      results = results.where(merry_go_round: merry_go_round) if merry_go_round
      results = results.where(play_structure: play_structure) if play_structure
      results = results.where(seesaw: seesaw)                 if seesaw
      results = results.where(slide: slide)                   if slide
      results = results.where(swing: swing)                   if swing
      results = results.where(carpark: carpark)               if carpark
      results = results.where(snack_shop: snack_shop)         if snack_shop
      results = results.where(wc: wc)                         if wc

      return results
    else
      return results
    end
  end

end
