class LikesController < ApplicationController
    def create
        @nogipost=Nogipost.find(params[:nogipost_id])
        @like=current_nogimasa.likes.create(nogipost_id: params[:nogipost_id])
        
    end

    def destroy
        @nogipost=Nogipost.find(params[:nogipost_id])
        @like=Like.find_by(nogipost_id: params[:nogipost_id], nogimasa_id: current_nogimasa.id)
        @like.destroy
        
    end
end
