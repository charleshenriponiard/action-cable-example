class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.first_name
      head :ok
    else
      redirect_to chatrooms_path
    end
  end


  private

    def message_params
      params.require(:message).permit(:contente, :chatroom_id)
    end

end
