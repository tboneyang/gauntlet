class VideosController < ApplicationController
  def new
  	@video = Video.new
  end

  def create
  	@video.string= @challenge.title
  end

  def update
  end

  def destroy
  	@video = Video.find(params[:id])
  	@video.destroy

  	redirect_to challenge_path
  end

end
