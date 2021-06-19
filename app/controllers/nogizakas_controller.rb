class NogizakasController < ApplicationController
  layout "nogizaka"
  before_action :authenticate_nogimasa!, only: [:index, :add, :edit, :show, :destroy, :create]
  PER=25
  
  def index
    @data=Nogizaka.page(params[:page]).per(PER)
    @like=Like.new
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

  def destroy
    @data=Nogizaka.find(params[:id])
    @nogizaka=Nogizaka.find(params[:id])
    if request.post? then
      @nogizaka.destroy
      redirect_to "/nogizakas"
    end
  end

  

  

  

  private
  def nogizaka_params
    params.require(:nogizaka).permit(:name, :age, :member, :song, :introduction).merge(nogimasa_id: current_nogimasa.id)
  end

  def nogipost_params
    params.permit(:content, :nogipost_id)
  end
end
