require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-types'



def data_mapper_setup
  ENV['RACK_ENV'] ||= "development"
  DataMapper.setup(:default, "postgres://localhost/gameplatform_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
