require 'dm-types'
class Play
  include DataMapper::Resource

  property :id, Serial
  property :gamestate, Json

  belongs_to :user 
  belongs_to :game

end