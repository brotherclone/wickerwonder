class WickerController < ApplicationController

  def index
    @characters = Character.all
    @situations = Situation.all
    @downloads = Download.all
    @materials = Material.all
  end

end
