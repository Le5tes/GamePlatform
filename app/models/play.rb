require 'dm-types'
class Play
  include DataMapper::Resource

  property :id, Serial
  property :gamestate, Json

  has n, :users, through: Resource 
  belongs_to :game

end