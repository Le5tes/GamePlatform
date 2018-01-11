class Game
  include DataMapper::Resource

  property :id, Serial
  property :rootpath, URI

  has n, :plays

end