class ReviewsController < ApplicationController
  before_action :set_playspace

  #index
  def index
    @reviews = @playspace.reviews
  end

  #new
  def end
    @review = @playspace.reviews.new
  end

  #create
  def create
    @review = @playspace.reviews.new(reviews_params)
    if @review.save
      redirect_to playspace_reviews_path(@playspace.id)
    else
      render :new
    end
  end

  #edit
  def edit
    @review = @playspace.review.find(reviews_params)
  end

  #update
  def update
    @revew = @playspace.review.find(reviews_params)
    if @review.update
      redirect_to playspace_reviews_path(@playspace.id)
    else
      render :edit
    end
  end

  private
  def set_playspace
    @playspace = Playspace.find(params[:playspace_id])
  end

  def reviews_params
    params.require(:reviews).permit(:comment)
  end

end
