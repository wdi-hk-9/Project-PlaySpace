class BookmarksController < ApplicationController
  before_action :authenticate
  before_action :set_bookmark, only: [:destroy]

  def index
    @bookmarks = current_user.bookmarks.order('created_at desc')
  end

  def create
    playspace_id = params[:bookmark][:playspace_id].to_i
    @bookmark = current_user.bookmarks.new
    @bookmark.user_id = current_user.id
    @bookmark.playspace_id = playspace_id
    if @bookmark.save
      redirect_to bookmarks_path
    else
      redirect_to playspace_path(playspace_id)
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private
  def set_bookmark
    unless @bookmark = current_user.bookmarks.find(params[:id])
      flash[:alert] = 'Bookmark not found.'
      redirect_to root_url
    end
  end
end
