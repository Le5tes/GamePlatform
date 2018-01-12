class Game
  include DataMapper::Resource

  property :id, Serial
  property :minplayercount, Integer
  property :maxplayercount, Integer
  property :rootpath, URI

  has n, :plays

end