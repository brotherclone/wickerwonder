module NavHelper

    def self.short
      @shortnavigationitems = {:homearea=>'Home', :characterarea => 'Characters', :comicarea=>'Comic', :pitcharea => 'Pitch materials'}
      return @shortnavigationitems
    end

    def self.long
      @longnavigationitems =  {:homearea=>'Home', :characterarea => 'Meet the characters', :comicarea=>'Get the comic', :pitcharea => 'Pitch materials'}
      return @longnavigationitems
    end

end