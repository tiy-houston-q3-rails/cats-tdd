class PurchasesController < ApplicationController
  def create
    @cat = Cat.find(params[:cat_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.price = @cat.price
    @purchase.cat = @cat

    if @purchase.save
      redirect_to receipt_path(token: @purchase.token)
    else
      render "cats/show"
    end
  end

  def receipt
    @purchase = Purchase.find_by token: params[:token]
  end

  private
  def purchase_params
    params.require(:purchase).permit(:purchaser_name)
  end
end
