class DealsController < ApplicationController
 before_filter :authenticate_person!, :except => [:index,:show]
  def new
    @deal = Deal.new
  end

  def show

  end

  def edit
  end

  def index
    @deals = Deal.all
  end

  def create
    @deal = Deal.new(params[:deal])
    if @deal.save
      flash[:notice]="Congratulations! Your deal has been created"
    else
      flash[:alert]="Error While creating deal,please try later"
    end
    redirect_to :root
  end

  def update
  end

  def destroy
  end

end

