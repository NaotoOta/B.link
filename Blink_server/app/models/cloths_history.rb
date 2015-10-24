class ClothsHistory < ActiveRecord::Base
  belongs_to :cloth
  belongs_to :history
end
