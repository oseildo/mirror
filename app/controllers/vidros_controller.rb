class VidrosController < ApplicationController
    def new
    end
    
    def index
        @vidros = Vidro.all
    end
    
    def show
        @vidro = Vidro.find(params[:id])
    end
    
    def create  
        #render plain: params[:vidros].inspect
        @vidro = Vidro.create(vidro_params)
        #@vidro.save
        
        redirect_to new_vidro_path #quando eu concluir a criação, vou para onde? ~> redirecione para a tela de cadastro
    end
    
    private
      def vidro_params
        params.require(:vidro).permit(:title, :text)
      end
end
