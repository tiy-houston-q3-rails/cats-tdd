class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find params[:id]
    @purchase = Purchase.new
  end
end
