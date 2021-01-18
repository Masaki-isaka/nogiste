class FavsController < ApplicationController
    def create
        @image=Image.find(params[:image_id])
        @fav=current_nogimasa.favs.create(image_id: params[:image_id])
    end

    def destroy
        @image=Image.find(params[:image_id])
        @fav=Fav.find_by(image_id: params[:image_id], nogimasa_id: current_nogimasa.id)
        @fav.destroy
    end
end
