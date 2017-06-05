require 'rack'
 
i = 0
app = Proc.new do |env|
  res = ['200', {'Content-Type' => 'text/html'}, ["#{i}"]]
  i += 1
  res
end

run app
