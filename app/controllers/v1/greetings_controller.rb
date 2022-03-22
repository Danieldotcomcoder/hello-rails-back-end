class V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.find(Greeting.pluck(:id).sample)
    render json: {
      message: greeting.content
    }.to_json
  end
end
