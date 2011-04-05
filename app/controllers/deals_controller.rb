class DealsController < ApplicationController
 before_filter :authenticate_person!
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
      flash[:notice]="Congratulations! Your account has been created"
    else
      flash[:alert]="Error While creating User,please try later"
    end
    redirect_to :root
  end

  def update
  end

  def destroy
  end

end
