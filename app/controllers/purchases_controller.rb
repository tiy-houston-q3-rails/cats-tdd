class PurchasesController < ApplicationController

  respond_to :html, :js, only: [:create]

  def create
    @cat = Cat.find(params[:cat_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.price = @cat.price
    @purchase.cat = @cat

    @purchase.save
    respond_with @purchase#, url: receipt_path(token: @purchase.token)
  end
  # 
  # def receipt
  #   @purchase = Purchase.find_by token: params[:token]
  # end

  private
  def purchase_params
    params.require(:purchase).permit(:purchaser_name)
  end
end
