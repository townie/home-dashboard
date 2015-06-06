require 'pocket-ruby'
module Sinatra
  module HomeDashboard
    module Routing
      module Home

        def self.registered(app)


          root = lambda do
          end

          app.get '/', &root
        end

      end
    end
  end
end


