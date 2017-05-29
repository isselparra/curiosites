class CuriositiesController< ApplicationController
    def show
        @curiosity = Curiosity.find(params[:id])
    end
    
    def destroy
        @curiosity = Curiosity.find(params[:id])        # recupere l'identifiant de la curiosite a supprimer
        @curiosity.delete                               # supprime la curiosite dans la base de donnees
        
        redirect_to root_path                           # redirige l'utilisateur vers la vue index
    end
    
    def new
        @curiosity = Curiosity.new                      # crée une curiosité 'vide'
    end
    
    def create
        @curiosity = Curiosity.new(curiosity_params)
        # instance une nouvelle curiosité
        # avec les parametres contenus dans le formulaire
        # et passés à la variable params
        
        if @curiosity.save # si la curiosité est sauvegardée sans erreurs
            redirect_to @curiosity # alors on l'affiche
        else
            render 'new' # sinon on reste sur la page de création
        end
    end
    
    private
    
    # définit les parametres acceptés par le formulaire
    # permet d'éviter à un utilisateur malveillant de passar d'autres parametres
    def curiosity_params
        params.require(:curiosity).permit(:name, :description, :image_url, :image_text, :category)
    end
end
