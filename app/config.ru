run lambda { |env|
  [
    200,
    { "content-type" => "text/plain" },
    ["Hello from Ruby and Unicorn!\n"]
  ]
}
