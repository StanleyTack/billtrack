class BalancesController < ApplicationController
  def index
    bills = Bill.where()
    @balances = Bill.all
  end

  # def show
  #   @balance = Bill.find(params[:id])
  # end

end
