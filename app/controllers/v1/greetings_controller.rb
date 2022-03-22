class V1::GreetingsController < ApplicationController
  def index
    @messages = Greeting.find(Greeting.pluck(:id).sample)
    render json: {
      message: @messages.message
    }
  end
end
