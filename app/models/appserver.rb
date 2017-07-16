class Appserver < ApplicationRecord
  belongs_to :server

  has_many :apps
end
