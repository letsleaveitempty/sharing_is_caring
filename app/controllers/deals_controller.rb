class DealsController < ApplicationController

  def new
  end

  def create
    @deal = Deal.new(params[:deal])

    if @deal.save
      redirect_to @deal
    else
      render 'new'
    end
  end

  def show
 
  end

  def index
    @deals = Deal.all
    @pins = @deals.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deals }
    end
  end

  def book
  end

end
