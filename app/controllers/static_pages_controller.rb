class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def about
  end

  def contact
  end

  def blog
  end
  
  def individual
    
    @lingerieitem = Product.find_by(id: params[:id].gsub('-',' '))
    @lingerie = @lingerieitem
    
    
    #@products = Product.all
    
    
  end
  
  
  
end
