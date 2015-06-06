require "mechanize"
module Sinatra
  module HomeDashboard
    module Routing
      module Home

        def self.registered(app)
          root = lambda do

            mechanize = Mechanize.new
            page = mechanize.get('http://www.thebostoncalendar.com/')
            @links = page.root.css('ul#events')
            erb :index
          end


        def load_events
          page = WebInspector.new('http://www.thebostoncalendar.com/')
          mechanize = Mechanize.new
          page = mechanize.get('http://www.thebostoncalendar.com/')
          @links = page.root.css('ul#events')

         end

          app.get '/', &root
        end

      end
    end
  end
end


