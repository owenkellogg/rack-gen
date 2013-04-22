use Rack::Static, 
  :root => "public",
  :index => "index.html"

run lambda { |env|
  Rack::Directory.new( "./public" ).call(env)
}