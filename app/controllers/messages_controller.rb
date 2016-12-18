class MessagesController < ApplicationController
  def index
    @message = Message.order("rand()").first
  end

  def show
    @message = Message.find(params['id'])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save!
      redirect_to @message
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:title, :text)
  end
end
