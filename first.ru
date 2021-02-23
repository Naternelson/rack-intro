require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>', "<h1>How's life?</h1>"]]
end

run my_server 