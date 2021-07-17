class FavsController < ApplicationController
    def create
        @image=Image.find(params[:image_id])
        @fav=current_user.favs.create(image_id: params[:image_id])
    end

    def destroy
        @image=Image.find(params[:image_id])
        @fav=Fav.find_by(image_id: params[:image_id], user_id: current_user.id)
        @fav.destroy
    end
end
