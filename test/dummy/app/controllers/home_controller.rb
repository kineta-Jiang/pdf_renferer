class HomeController < ApplicationController
  
  def index
    respond_to  do |format|
      format.html
      format.pdf { render pdf: 'a1', filename: 'contents'}
    end
  end
  
end