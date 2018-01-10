class Play
  include DataMapper::Resource

  property :id, Serial
  property :gamestate, JSON

  belongs_to :user 
  belongs_to :game

end