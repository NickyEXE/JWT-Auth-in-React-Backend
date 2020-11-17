class LikesController < ApplicationController

  def create
    @like = Like.create(message_id: params[:message_id])
    @channel = @like.message.channel
    render json: @channel, serializer: ChannelShowSerializer
  end
end
