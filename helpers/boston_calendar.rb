require "mechanize"
module Sinatra
  module HomeDashboard
    module Helper
      module BostonCalendar

        def load_events
          page = WebInspector.new('http://www.thebostoncalendar.com/')
          mechanize = Mechanize.new
          page = mechanize.get('http://www.thebostoncalendar.com/')
          links = page.root.css('ul#events')
          links.each do |link|

          end
         end

        def self.registered(app)
          root = lambda do

            erb :index
          end



          app.get '/', &root
        end

      end
    end
  end
end


