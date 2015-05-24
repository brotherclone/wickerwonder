class WickerController < ApplicationController

  def index
    @characters = Character.all
  end

end
