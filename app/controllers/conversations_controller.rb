class ConversationsController < ApplicationController
  def index
    #obtain all the conversation list
  	@conversations = Conversation.all.where("sender=? OR receiver=?",current_user, current_user)
  end
  def new
    #create new conversation
  	@conversation = Conversation.new
  end
  def create
    #new conversation creation
  	@conversation = Conversation.new(sender: User.find_by(email: params[:sender]), receiver: User.find_by(email: params[:receiver]))
    @conversation.messages.new(text: params[:newmessage], user_id: current_user.id)
  	if @conversation.save
  		respond_to do |format|
  		  format.html{ redirect_to @conversation }
  		  format.js{}
  		end
  	else
  		render :new
  	end
  end
  def destroy
  end
  private
  def conversation_params
  	params.require(:conversation).permit(:sender, :receiver)
  end
  def conversation_find
  	@conversation = Conversation.find(params[:id])
  end
end
