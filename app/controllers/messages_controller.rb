class MessagesController < ApplicationController
	before_filter :authenticate_user!

  def index
    # sender = User.find(@message.user_sender)
    # @sender_name = sender.user_name
  end

	def new
	@message = Message.new()
	@message.user_receiver = params[:user_receiver]
  @message.user_sender = current_user.id
  @message.project_id = params[:project_id]
	end

  def create
   @message = Message.new(params[:message])
   @message.sender = current_user
   @message.save
    # flash[:notice] = "Message Sent"
     redirect_to '/'
  end

  def show #get request, read one object
    @message = Message.find(params[:id])
    project = Project.find(@message.project_id)
    sender = User.find(@message.user_sender)
    @project_id = project.id
    @project_name = project.title
    @users_messages = current_user.messages_received
    project_messages = Message.where(:project_id => @project_id)
    @sender_id = sender.id
    @sender_name = sender.user_name
    @messages = project_messages.where("user_sender = ? or user_sender = ?", @sender_id, current_user.id)
  end
end
