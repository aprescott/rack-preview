# Rack::Preview

Rack::Preview is a simple piece of Rack middleware to let you serve a different response to requests made as part of Safari's Top Sites and Opera's Speed Dial thumbnail previews, by hooking into the `X-Purpose: preview` HTTP header.

To see the effect, check [Martin Sutherland's write-up for Safari](http://sunpig.com/martin/archives/2010/01/08/how-to-detect-a-page-request-from-safari-4s-top-sites-feature.html). [Opera's dev blog](http://dev.opera.com/articles/view/opera-speed-dial-enhancements/#with-x-purpose) also has more.

# Installation

To install from RubyGems:

    gem install rack-preview

To get the source:

    git clone https://github.com/aprescott/rack-preview.git

# Example

    use Rack::Preview, %Q{<h1 style="font-size: 10em;">Welcome to the preview!</h1>}

    run lambda { |env| [200, { "Content-Type" => "text/html" }, ["Hello world!"]] }

# Contribute

* Fork it
* Make a new feature branch: `git checkout -b some-new-thing master`
* Hack away and write tests that pass
* Pull request
