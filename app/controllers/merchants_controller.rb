class MerchantsController < ApplicationController
  
  def index
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    @merchants = JSON.parse(response.body, symbolize_names: true)[:data]
    # binding.pry
  end
  
  def show
    def show 
      @merchant = Merchant.find(params[:merchant_id])
      @movie = Movie.find(params[:id])
    end 
  end
  
end