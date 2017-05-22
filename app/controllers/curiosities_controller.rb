class CuriositiesController< ApplicationController
    def show
        @curiosity = Curiosity.find(params[:id])
    end
    
    def destroy
        @curiosity = Curiosity.find(params[:id])        # recupere l'identifiant de la curiosite a supprimer
        @curiosity.delete                               # supprime la curiosite dans la base de donnees
        
        redirect_to root_path                           # redirige l'utilisateur vers la vue index
    end
end
