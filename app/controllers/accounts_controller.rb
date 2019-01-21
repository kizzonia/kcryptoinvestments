class AccountsController < ApplicationController
  layout "accounts"
  before_action :find_account, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :find_users, only: [:index, ]
  def index
    @users = User.where(user_id: current_user)
    @accounts = Account.where(user_id: current_user).order('created_at DESC')
    @deposits = Deposit.where(user_id: current_user).order('created_at DESC')
    @trades = Trade.where(user_id: current_user).order('created_at DESC')
    @withdraws = Withdraw.where(user_id: current_user).order('created_at DESC')
  end
  def show
  end

  private
  def find_account
    @account = Account.friendly.find(params[:id])
  end

  def find_users
    if params[:id].nil?
      @user = current_user
    end
  end
    def account_params
      params.require(:account).permit(:balance,  :user_id, :status)
    end
end
