class TransactionsController < ApplicationController
#before_filter :check_unit,:only => :create
  def new
    @deal =Deal.find(params[:deal_id])
    @transaction = @deal.transactions.new
  end

  def create
    @deal =Deal.find_by_id(params[:deal_id])
    @transaction = @deal.transactions.new(params[:transaction])
    if @transaction.unit == nil
      flash.now[:alert] = "Unit is empty!"
      render 'new'
    else
        if check_unit(@transaction.unit)
            @transaction.payment = @transaction.unit*@deal.discounted_price
            @transaction.person = current_person
            if @transaction.save
              flash[:notice] = "Transaction successfully Done!"
              @deal.unit = @transaction.unit - @deal.unit
              @deal.save
              redirect_to deals_path
            else
              flash.now[:alert]= "o0ps something went wrong!! try again"
              render 'new'
            end
        else
          flash.now[:notice] = "YOu stupid!! Not enough Stocks"
          render 'new'
        end
    end

  end

  def index
  end

def check_unit(transaction_unit)
  if transaction_unit <= @deal.unit
    return true;
  else
    return false;
  end
end

end
