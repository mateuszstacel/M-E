class InformationController < ApplicationController

  def full_map_addresses
    @information = Information.all
  end

  def show
    @informations = Information.all
    @information = Information.find(params[:id])
  end

end
