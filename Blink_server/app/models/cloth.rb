class Cloth < ActiveRecord::Base
  belongs_to :user
  has_many :histories, through: :cloths_histories
end
