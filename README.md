# Server benchmarks

## Apps

This repo is to store some very simple web apps for us to easily run benchmarks on them.

These apps will have similar logic:

- Renders `"Hello World"`
- Sets header `Content-Type` to `text/html`

## How to start apps
For now we have following apps:
- `puma_test`: A simple rack app run by puma, just run `puma -C puma_test/puma.rb`. This will run on `0.0.0.0:8080` by default.
- `goby_simple_server`: A goby app uses built in simple server. Run `goby goby_simpler_server.gb` should work. This runs on `localhost:3000` by default. (Run `goby -v` to make sure you're using the latest version).

## Script

I use `Apache bench` (`ab`) to do the benchmark, with flags `-n 10000 -c 100`
