class Game
  include DataMapper::Resource

  property :id, Serial
  property :minplayercount, Integer
  property :maxplayercount, Integer
  property :rootpath, URI
  property :name, String
  property :type, String
  property :description, Text
  property :minplayercount, Integer
  property :maxplayercount, Integer

  has n, :plays

end
