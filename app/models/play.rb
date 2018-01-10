class Play
  include DataMapper::Resource

  property :id, Serial
  property :score, Integer

  belongs_to :user 

end