class Server < ApplicationRecord
  belongs_to :environment

  has_many :appservers
end
