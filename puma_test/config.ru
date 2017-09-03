require 'rack'
 
app = Proc.new do |env|
  env = ['200', {'Content-Type' => 'text/html'}, ["Hello World"]]
end

run app
