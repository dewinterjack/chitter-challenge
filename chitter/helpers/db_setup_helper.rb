require 'dm-core'

if ENV['RACK_ENV'] == 'test' then 
  DataMapper.setup(:default, 'postgres://localhost/chitter_test')
else
  DataMapper.setup(:default, 'postgres://localhost/chitter')
end