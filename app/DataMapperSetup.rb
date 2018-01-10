require 'data_mapper'
require 'dm-postgres-adapter'



def data_mapper_setup
  ENV['RACK_ENV'] ||= "development"
  DataMapper.setup(:default, "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
