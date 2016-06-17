class ConversationsController < ApplicationController
  def index
  	@conversations = Conversation.all.where("sender=? OR receiver=?",current_user, current_user)
  end
  def new
  	@conversation = Conversation.new
  end
  def create
  	@conversation = Conversation.new(conversation_params)
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
