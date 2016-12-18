class MessagesController < ApplicationController
  def index
    @message = Message.order("rand()").first
  end
end
