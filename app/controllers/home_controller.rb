require 'jbuilder'

class HomeController < ApplicationController
  before_action :sidebar_data

  def index
  end
end
