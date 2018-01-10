class Game
  include DataMapper::Resource

  property :id, Serial

  has n, :plays

end