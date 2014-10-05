class ChallengesController < ApplicationController

#makes a new challenge object
	def new
		@challenge = Challenge.new
	end

#if saves, make new challenge; if not, just render 'new' view page.
	def create
		@challenge = Challenge.new(challenge_params)
		@challenge.score = 0;

		if @challenge.save
			redirect_to challenges_path
		else
			render 'new'
		end

	end

#destroying challenge appropriately
	def destroy
		@challenge = Challenge.find(params[:id])
		@challenge.destroy

		redirect_to challenges_path
	end

	def upvote
		@challenge = Challenge.find(params[:id])
		@challenge.score+=1
		@challenge.save
	end

	def downvote
		@challenge = Challenge.find(params[:id])
		@challenge.score-=1
		@challenge.save
	end

#update action after edit is made
	def update
		@challenge = Challenge.find(params[:id])

		if @challenge.update(challenge_params)
			redirect_to challenges_path
		else
			render 'edit'
		end
	end

#Lists challenges by tags
	def index
		if params[:tag]
			@challenges = Challenge.tagged_with(params[:tag])
		else
			@challenges = Challenge.all
		end
	end

#edits existing challenges
	def edit
		@challenge = Challenge.find(params[:id])
	end

#shows individual challenge
	def show
		@challenge = Challenge.find(params[:id])
	end

#defines strong challenge parameters so only appropriate data is passed
	private
		def challenge_params
			params.require(:challenge).permit(:title, :text, :tag_list, :score, :videos)
		end

end
