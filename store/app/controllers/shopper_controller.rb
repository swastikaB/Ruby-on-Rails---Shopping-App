class ShopperController < ApplicationController
include CurrentCart
before_action :set_cart
skip_before_action :authorize
skip_before_action :verify_authenticity_token

  def index
    @products = Product.order(:name)
  end

   def question
  end

  def contact
  end
   
  def news
  end

  def search
    #redirect_to shopper_url, notice: 'Product was successfully searched.'
    #@products = Product.order(:id) # ... or whatever here
    puts " HEllo  ************** #{params[:name]}"
    query_string = []
    #query_string.push('')
    query_param = []
   # query_param.push('')
    if(!params[:name].empty?)
      
      query_string.push ("name like ?")
      query_param.push( " '%" + params[:name] + "%' ")
    end
    if(!params[:description].empty?)
      query_string.push ("description like ?")
      query_param.push( " '%" + params[:description] + "%' ")
    end
   
    if(!params[:price_from].empty?)
      query_string.push ("price > ? ")
      query_param.push( params[:price_from])
    end

    if(!params[:price_to].empty?)
      query_string.push ("price < ? ")
      query_param.push( params[:price_to])
    end

    query = "Product.where(' " 
    query += query_string.join(' and ')
    query += " ', " + query_param.join(',')
    query += " )"
    puts "query : #{query}"
    @products = eval(query)
=begin   
    query = " '"
    query += query_string.join(' and ')
    query += " ', " + query_param.join(',')
    puts "query : #{query}"
    @products = Product.where(query)
=end
    render :template => 'shopper/index'

  rescue
   redirect_to shopper_url, notice: "Search criteria was wrong"
  end

end
