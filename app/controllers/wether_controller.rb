class WetherController < ApplicationController
  def index
  end

  def search
    countries = find_country(params[:country])

    unless countries
      flash[:alert] = 'Country Not found'
      return render action: :index
    end
    
  end


end
