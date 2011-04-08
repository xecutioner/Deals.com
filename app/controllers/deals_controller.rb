class DealsController < ApplicationController
 before_filter :authenticate_person!, :except => [:index,:show]
  def new
    @deal = Deal.new
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def index

    @deals = Deal.all
  end

  def create
    @deal = Deal.new(params[:deal])
    if @deal.discounted_price > @deal.actual_price
      render 'new'
      flash[:notice] = "Discounted Price is more than the actual price"
    end
      @deal.person_id =current_person.id
      if @deal.save
        flash[:notice]="Congratulations! Your deal has been created"
        redirect_to :root
      else
        flash[:alert]="Error While creating deal,please try later"
        render 'new'
      end

  end

end



