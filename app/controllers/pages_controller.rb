class PagesController < ApplicationController

  def home
    render :home, layout: 'landing'
  end

end
