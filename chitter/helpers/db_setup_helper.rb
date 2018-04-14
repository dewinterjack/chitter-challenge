if ENV['RACK_ENV'] == test then 
  DataMapper.setup('postgres://localhost/chitter_test')
else
  DataMapper.setup('postgres://localhost/chitter')
  
DataMapper.auto_upgrade!