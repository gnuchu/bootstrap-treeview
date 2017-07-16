require 'jbuilder'

class HomeController < ApplicationController
  def index
    @data = Jbuilder.new do |json|
      json.tree Environment.all do |environment|
        json.text environment.name
        json.url "/environment/#{environment.id}"
        json.state do
          json.expanded false
        end
        json.nodes environment.servers do |server|
          json.text server.name
          json.url "/server/#{server.id}"
          json.nodes server.appservers do |appserver|
            json.text appserver.name
            json.url "/appserver/#{appserver.id}"
            json.nodes appserver.apps do |app|
              json.text app.name
              json.url "/app/#{app.id}"
            end
          end
        end
      end
    end.attributes!
  end
end
