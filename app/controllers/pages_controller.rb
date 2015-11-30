class PagesController < ApplicationController

  def index
    @@win = false
    if (params["1"] == "2" && params["2"] == "3" && params["3"] == "7" && params["4"] == "1")
      @@win = true
      redirect_to '/secret'
    else
      @@win = false
    end
  end

  def secret
    redirect_to root_path unless @@win 
    @@win = false
    
  end

  def guess
  end

end
