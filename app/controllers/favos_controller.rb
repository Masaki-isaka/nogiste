class FavosController < ApplicationController
    def create
        @image=Image.find(params[:image_id])
        @favo=current_nogimasa.favos.create(image_id: params[:image_id])
    end

    def destroy
        @image=Image.find(params[:image_id])
        @favo=Favo.find_by(image_id: params[:image_id], nogimasa_id: current_nogimasa.id)
        @favo.destroy
    end
end
