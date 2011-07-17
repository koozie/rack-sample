require 'rubygems'
require 'rack'
require 'rack/rewrite'
require 'thin'

#use Rack::Static, :urls => ["/css", "/images", "/index.html", "/contact.html", "/home.html", "/password.html"], :root => "public"
use Rack::Static, :urls => ["/css", "/images", "/index.html"], :root => "public"

use Rack::Rewrite do
rewrite '/', '/index.html'
end

run Rack::Directory.new('public')


