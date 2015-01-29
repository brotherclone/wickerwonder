class HomeController < ApplicationController

  include NavHelper

  def index
    @shortnavigationitems =  NavHelper.short
    @longnavigationitems =  NavHelper.long
    @characters = Character.all
  end
end
