class TransactionsController < ApplicationController
#before_filter :check_unit,:only => :create
  def new
    @deal =Deal.find(params[:deal_id])
    @transaction = @deal.transactions.new
  end

  def create
    @deal =Deal.find_by_id(params[:deal_id])
    @transaction = @deal.transactions.new(params[:transaction])
    if @transaction.unit == 0                                     #check if the amount of unit applied is zero
      flash.now[:alert] = "Unit is empty!"
      render 'new'
    else
        if check_unit(@transaction.unit)                          #calculating payment
            @transaction.payment = @transaction.unit*@deal.discounted_price
            @transaction.person = current_person
            if @transaction.save
              flash[:notice] = "Transaction successfull!"
              @deal.unit = @deal.unit-@transaction.unit             #calculate remaining units in stock
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

def check_unit(transaction_unit)      #to check if the applied number of unit is more than stock
  if transaction_unit <= @deal.unit
    return true;
  else
    return false;
  end
end

end
