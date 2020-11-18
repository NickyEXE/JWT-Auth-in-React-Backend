class LikesController < ApplicationController

  def create
    like = session_user.likes.create(message_id: params[:message_id])
    channel = like.message.channel
    render json: channel, serializer: ChannelShowSerializer
  end
end
