class NogimasasController < ApplicationController

    def create
        @user=Nogimasa.new(nogimasa_params)
        if @user.save
            SampleWorker.perform_async(@user.id)
            redirect_to @user
        else
            render "new"
        end
    end
    
end
