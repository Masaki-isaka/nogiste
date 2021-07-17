class NogizakasController < ApplicationController
  layout "account"
  before_action :authenticate_user!, only: [:index, :add, :edit, :show, :destroy, :create]
  PER=25
  
  def index
    @data=Account.page(params[:page]).per(PER)
    @like=Like.new
  end 

  def login_check
    render :layout => "top"
  end

  def show
    @data=Account.find(params[:id])
  end

  def new
    @account=Account.new
  end

  def create
    if Account.where(name: current_user.username).blank?
      @account=Account.new(account_params)
      if @account.save
        redirect_to "/nogizakas"
      else
        render "new"
      end 
    else
      redirect_to "/nogizakas", alert: "⚠アカウントは2つ以上作成できません⚠"
    end
  end

  def edit
    @account=Account.find(params[:id])
  end

  def update
    obj=Account.find(params[:id])
    obj.update(account_params)
    redirect_to "/nogizakas"
  end

  def guest_sign_in
    nogimasa = User.find_or_create_by!(username: "ゲストユーザー") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    if sign_in nogimasa
      Account.find_or_create_by!(name: "ゲストユーザー") do |account|
        account.age=20
        account.member="秋元真夏"
        account.song="ぐるぐるカーテン"
        account.introduction="ゲストユーザーです。"
        account.user_id=current_user.id
      end
    end
    redirect_to "/nogitops"
  end

  private
  def account_params
    params.require(:account).permit(:name, :age, :member, :song, :introduction).merge(user_id: current_user.id)
  end
end
