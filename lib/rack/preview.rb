# Copyright (c) 2010 Adam Prescott
# Licensed under the MIT license. See LICENSE.

require "rack"

class Rack::Preview
  def initialize(app, preview_body = nil, &block)
    @app = app
    @preview = (preview_body ? [preview_body] : block.call)
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    
    previewing     = env["HTTP_X_PURPOSE"] =~ /preview/i                # note http://code.google.com/p/chromium/issues/detail?id=80824
    ua_string      = env["HTTP_USER_AGENT"]
    safari_preview = ua_string !~ /Chrome/ && ua_string =~ /Safari/     # Chrome sends "Safari" in its UA
    opera_preview  = ua_string =~ /Opera/                               # Opera documentation says they'll send X-Purpose: preview
        
    if previewing && (safari_preview || opera_preview)
      [status, headers, @preview]
    else
      [status, headers, response]
    end
  end
end
