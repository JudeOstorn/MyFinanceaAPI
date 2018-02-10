class InfoController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show_finances
    #@user = User.find(params[:id])
    incomes = MoneyOperation.where(user_id: 1, transaction_type_id: 1)
    income = incomes.map { |i| i.score }.inject(:+)
    consumptions = MoneyOperation.where(user_id: 1, transaction_type_id: 2)
    consumption = consumptions.map { |i| i.score }.inject(:+)
    finances = income - consumption
    response = {finances: finances,
                income: income,
                consumption: consumption }
    render json: response
  end

end
