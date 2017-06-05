class VideosController < ApplicationController

	def index
		@videos = current_user.videos.where(approved: true)
		# puts "#{ziggeo.streams.get(ENV['ZIGGEO_KEY'], ENV['ZIGGEO_KEY'])}"
	end


	def destroy
		video = current_user.videos.find_by(uid: params[:id])
		if video 
			ziggeo = Ziggeo.new(ENV['ZIGGEO_KEY'], ENV['ZIGGEO_SECRET'], ENV['ZIGGEO_ENCRPYTION'])
			ziggeo.videos.delete(video.uid)
			flash[:success] = 'Video removed! It may take some time to reflect changes on the server.'
		else
			flash[:warning] = 'Cannot find such video...'
		end
		redirect_to root_path
	end
end
