require File.expand_path('../environment', __FILE__)

Dir["#{File.dirname(__FILE__)}/app/*.rb"].each do |file|
  require file
end
