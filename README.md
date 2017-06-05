# Server benchmarks

This repo is to store some very simple web apps for us to easily run benchmarks on them.

These apps will have similar logic:

```ruby
# initialize server
i = 0

server.mount("/") do |req, res|
  res.body = i.to_s # show current request count
  i++ # increment request count
end

# start server
```

Use this logic instead of just `hello world` app is because I also want to know if there's any race condition issue.

## Apps

For now we have following apps:
- `puma_test`: A simple rack app run by puma, just run `puma -C puma_test/puma.rb`.
- `goby_simple_server`: A goby app uses built in simple server. Run `goby goby_simpler_server.gb` should work.
