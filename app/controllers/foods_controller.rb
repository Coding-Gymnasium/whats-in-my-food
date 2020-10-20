class FoodsController < ApplicationController
  def index
    response = FoodsFacade.search_foods(params[:q])
    @results = response[:totalHits]
    @foods = response[:foods]
  end
end
