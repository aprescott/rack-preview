Gem::Specification.new do |s|
  s.name         = "rack-preview"
  s.version      = "0.0.2"
  s.authors      = ["Adam Prescott"]
  s.email        = ["adam@aprescott.com"]
  s.homepage     = "https://github.com/aprescott/rack-preview"
  s.summary      = "Manipulate page preview thumbnails for your Rack app."
  s.description  = "Manipulate page preview thumbnails for your Rack app."
  s.files        = Dir["{lib/**/*}"] + %w[rack-preview.gemspec LICENSE Gemfile README.md]
  s.require_path = "lib"
  s.test_files   = Dir["test/*"]
  s.add_dependency "rack"
end
