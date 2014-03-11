module Imdb
  class Episode < Base
    attr_accessor :season, :episode, :episode_title, :air_date

    def initialize(imdb_id, season, episode, episode_title, air_date = "")
      super(imdb_id, episode_title)
      @url = "http://akas.imdb.com/title/tt#{imdb_id}/combined"
      @season = season
      @episode = episode
      @air_date = air_date
    end
    
  end
end
