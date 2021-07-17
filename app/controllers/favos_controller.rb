class FavosController < ApplicationController
    def create
        @image=Image.find(params[:image_id])
        @favo=current_user.favos.create(image_id: params[:image_id])
    end

    def destroy
        @image=Image.find(params[:image_id])
        @favo=Favo.find_by(image_id: params[:image_id], user_id: current_user.id)
        @favo.destroy
    end
end
