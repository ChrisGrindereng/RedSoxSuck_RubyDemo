class City < ApplicationRecord
  has_many :players
  has_many :teams
end
