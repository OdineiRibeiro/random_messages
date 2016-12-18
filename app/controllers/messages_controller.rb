class MessagesController < ApplicationController
  def index
    @message = Message.order("rand()").first
  end

  def show
    @message = Message.find(params['id'])
  end
end
