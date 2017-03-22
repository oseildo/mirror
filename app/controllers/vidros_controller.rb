class VidrosController < ApplicationController
    def new
    end
    
    def show
        @vidro = Vidro.find(params[:id])
    end
    
    def create  
        #render plain: params[:vidros].inspect
        @vidro = Vidro.new(vidro_params)
        
        @vidro.save
        redirect_to @vidro
    end
    
    private
      def vidro_params
        params.require(:vidro).permit(:title, :text)
      end
end
