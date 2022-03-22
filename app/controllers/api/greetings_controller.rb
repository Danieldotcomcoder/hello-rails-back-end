module Api
  class GreetingsController < ApplicationController
    def index
      msg = Greeting.order(Arel.sql('RANDOM()')).first
      render json: { message: msg.message }
    end
  end
end
