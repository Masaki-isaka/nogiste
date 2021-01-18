class NogipostsController < ApplicationController
  layout "nogizaka"
  before_action :authenticate_nogimasa!, only: [:index, :show, :create, :destroy]

  def index
    @data=Nogizaka.page(params[:page])
    @nogiposts=Nogipost.order("created_at desc")
    @nogipost=Nogipost.where(params[:id])
    @like=Like.new
  end

  def new
    @nogipost=Nogipost.new
    @msg="Let's post"
  end

  def create
    if Nogizaka.where(name: current_nogimasa.username).exists?
      @nogipost=Nogipost.new(nogipost_params)
      @nogipost.nogimasa_id=current_nogimasa.id
      @nogipost.save
      redirect_to "/nogiposts"
    else
      redirect_to "/nogizakas/danger"
    end
  end

  def destroy
    @nogipost=Nogipost.find(params[:id])
    @nogipost.destroy
    redirect_to "/nogiposts"
  end

  private
  def nogipost_params
    params.require(:nogipost).permit(:content, :nogimasa_id)
  end
end

