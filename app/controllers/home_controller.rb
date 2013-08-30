class HomeController < ApplicationController
  def index
    @homejson = GowallaTotalCheckin.limit(1000).to_gmaps4rails
  end
end
