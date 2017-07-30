class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def sidebar_data
      @sidebar_data = Jbuilder.new do |json|
        json.tree Environment.all do |environment|
          json.text environment.name
          json.url "/environments/#{environment.id}"
          json.state do
            json.expanded false
          end
          json.nodes environment.servers do |server|
            json.text server.name
            json.url "/servers/#{server.id}"
            json.nodes server.appservers do |appserver|
              json.text appserver.name
              json.url "/appservers/#{appserver.id}"
              json.nodes appserver.apps do |app|
                json.text app.name
                json.url "/apps/#{app.id}"
              end
            end
          end
        end
      end.attributes!
    end
end
