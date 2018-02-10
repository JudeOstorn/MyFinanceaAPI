class InfoController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show_finances
    @user = User.find(params[:id])
    income = Transaction.where(user_id: @user, type_id: 1)
    income = income.map { |i| i.score }
    consumption = Transaction.where(user_id: @user, type_id: 2)
    response = {finances: @user.finances, income: income.score, consumption: consumption.score }
    render json: response
  end

end
