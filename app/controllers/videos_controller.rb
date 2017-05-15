class VideosController < ApplicationController

	def index
		ziggeo = Ziggeo.new(ENV['ZIGGEO_KEY'], ENV['ZIGGEO_SECRET'], ENV['ZIGGEO_ENCRPYTION'])
		@videos = ziggeo.videos.index
	end
