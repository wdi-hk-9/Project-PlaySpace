class ReviewsController < ApplicationController
  before_action :set_playspace
  before_action :authenticate, only: :create

  def index
    @reviews = @playspace.reviews.reverse
    @review  = @playspace.reviews.new
  end

  def new
    @review = @playspace.reviews.new
  end

  def create
    @review = @playspace.reviews.new(reviews_params)
    @review.user = current_user
    if @review.save
      redirect_to playspace_reviews_path(@playspace.id)
    else
      render :new
    end
  end

  def edit
    @review = @playspace.review.find(reviews_params)
  end

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
    params.require(:review).permit(:comment)
  end

end
