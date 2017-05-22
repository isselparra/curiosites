class Curiosity < ActiveRecord::Base
     validates :category, :format => { :with => /\A[A-Z]+[a-z]+\z/, :message => "Only capitalized categories" }
end
