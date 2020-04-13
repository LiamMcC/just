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
    
    
    @products = Product.all
    
    
  end
  
  
   def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
       @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
   end
  
  
  
end
