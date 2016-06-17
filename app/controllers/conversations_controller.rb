class ConversationsController < ApplicationController
  def index
  	@conversations = Conversation.all.where("sender=? OR receiver=?",current_user, current_user)
  end
  def new
  end
  def destroy
  end
end
