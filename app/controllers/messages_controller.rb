class MessagesController < ApplicationController
	before_filter :authenticate_user!

	def new
	@message = Message.new()
	@message.user_receiver = params[:recipient_id]
	end

  def create
   @message = Message.new(params[:message])
   @message.sender = current_user
    @message.save
    # flash[:notice] = "Message Sent"
    # redirect_to '/'
  end

  def show #get request, read one object
    @message = Message.find(params[:id])
    sender = User.find(@message.sender_id)
    @profile = sender.profile
  end
end
