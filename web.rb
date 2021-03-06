require 'webrick'

module Ruboty
  module Handlers
    class Web < Base
      Thread.new do
        WEBrick::HTTPServer.new(
          :DocumentRoot => "./public/",
          :Port => ENV['PORT'] || 8000
        ).start
      end
    end
  end
end
