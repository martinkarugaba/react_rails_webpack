class GreetingsController < ApplicationController
  def random
    @greeting = Greeting.order(Arel.sql('RANDOM()')).first
    render json: { greeting: @greeting.message }
  end
end
