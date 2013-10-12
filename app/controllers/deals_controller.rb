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
  end

end