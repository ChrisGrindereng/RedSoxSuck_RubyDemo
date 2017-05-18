class Player < ApplicationRecord
  belongs_to :city
  belongs_to :team
end
