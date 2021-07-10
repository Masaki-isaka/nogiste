class NogizakasController < ApplicationController
  layout "nogizaka"
  before_action :authenticate_nogimasa!, only: [:index, :add, :edit, :show, :destroy, :create]
  PER=25
  
  def index
    @data=Nogizaka.page(params[:page]).per(PER)
    @like=Like.new
  end 

  def login_check
    render :layout => "top"
  end

  def show
    @data=Nogizaka.find(params[:id])
  end

  def new
    @nogizaka=Nogizaka.new
  end

  def create
    if Nogizaka.where(name: current_nogimasa.username).blank?
      @nogizaka=Nogizaka.new(nogizaka_params)
      if @nogizaka.save
        redirect_to "/nogizakas"
      else
        render "new"
      end 
    else
      render "danger"
    end
  end

  def edit
    @nogizaka=Nogizaka.find(params[:id])
  end

  def update
    obj=Nogizaka.find(params[:id])
    obj.update(nogizaka_params)
    redirect_to "/nogizakas"
  end

  def guest_sign_in
    nogimasa = Nogimasa.find_or_create_by!(username: "ゲストユーザー") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    if sign_in nogimasa
      Nogizaka.find_or_create_by!(name: "ゲストユーザー") do |account|
        account.age=20
        account.member="秋元真夏"
        account.song="ぐるぐるカーテン"
        account.introduction="ゲストユーザーです。"
        account.nogimasa_id=current_nogimasa.id
      end
    end
    redirect_to "/nogitops"
  end

  private
  def nogizaka_params
    params.require(:nogizaka).permit(:name, :age, :member, :song, :introduction).merge(nogimasa_id: current_nogimasa.id)
  end
end
