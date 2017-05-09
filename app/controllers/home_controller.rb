class HomeController < ApplicationController
  def index
    @name = 'Grumpy Cat'
    @surname_1 = 'Aussi connu sous le nom de : Tardar Sauce'
    @surname_2 = 'Ou : Chat grincheux'
    @description = 'Célébrité du web ravageausement boudeuse, Mème interstelaire'
    @comment = 'Ce chat roxe du poney'
    
    @curiosites = [
      Curiosidad.new('pelote de laine'),
      Curiosidad.new('tapis de souris'),
      Curiosidad.new('herbe à chat'),
      Curiosidad.new('arbre à gratter'),
      Curiosidad.new('oreilles de lapin'),
      Curiosidad.new('peluche dinosaure')]
  end
end
