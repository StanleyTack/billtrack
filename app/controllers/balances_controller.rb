class BalancesController < ApplicationController
  def index
    relevant_bills = Bill.where("payer_id = ? OR beneficiary_id = ?", current_user.id, current_user.id)

    @balances = relevant_bills
  end

  # def show
  #   @balance = Bill.find(params[:id])
  # end

end
