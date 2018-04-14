require 'dm-core'
require 'dm-timestamps'
require  'dm-migrations'

class Peep
  include DataMapper::Resource

  property :id, Serial
  property :body, String
  property :created_at, DateTime

end

DataMapper.finalize