class VideosController < ApplicationController
  def new
  	@video = Video.new
  end

  def create
  	@video.string= @challenge.title
        @video.challenge = current_challenge
        if @video.save
          redirect_to challenge_path
        else
          redirect_to root
        end
  end

  def update
  end

  def destroy
  	@video = Video.find(params[:id])
  	@video.destroy

  	redirect_to challenge_path
  end

  private
    
    def video_params
      params.require(:video).permit(:token)
    end

end
