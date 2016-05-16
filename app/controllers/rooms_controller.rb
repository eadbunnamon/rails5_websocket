class RoomsController < ApplicationController
	def show
	  	@messages = Message.all
	  	@message = Message.new
	end

	def create
		Message.create!(message_params)
	end

  	private

	def message_params
	  params.require(:message).permit(:content)
	end
end
