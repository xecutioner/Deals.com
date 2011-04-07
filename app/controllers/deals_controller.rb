class DealsController < ApplicationController
 before_filter :authenticate_person!, :except => [:index,:show]
  def new
    @deal = Deal.new
  end

  def show
    @deal = Deal.find(params[:id])
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
      redirect_to :root
    else
      flash[:alert]="Error While creating deal,please try later"
      render 'new'
    end

  end

  def update
  end

  def destroy
  end

end

