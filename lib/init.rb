require 'rubygems'
require 'uuid'

require "#{File.dirname(__FILE__)}/godaddy_api/godaddy_api"
require "#{File.dirname(__FILE__)}/godaddy_api/authentication"
require "#{File.dirname(__FILE__)}/godaddy_api/domain"
Dir["#{File.dirname(__FILE__)}/wsdl2ruby/*.rb"].each do |lib|
  require lib
end
