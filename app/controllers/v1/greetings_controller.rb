class V1::GreetingsController < ApplicationController
  def index
    @messages = Greeting.find(Greeting.pluck(:id).sample)
    render json: {
      messages: @messages
    }.to_json
  end
end
