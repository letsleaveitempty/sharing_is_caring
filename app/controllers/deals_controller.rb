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
    @deal = Deal.find(params[:id])
  end

  def index
    @deals = Deal.all
    @pins = @deals.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deals }
    end
  end

end
