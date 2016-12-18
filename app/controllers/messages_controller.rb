class MessagesController < ApplicationController
  def index
    @message = Message.order("random()").first
  end
end
