class Team < ApplicationRecord
  belongs_to :city
  has_many :players
end
