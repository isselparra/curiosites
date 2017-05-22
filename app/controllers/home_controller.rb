class HomeController < ApplicationController
  def index
    @my_curiosities = Curiosity.all
  end
end
