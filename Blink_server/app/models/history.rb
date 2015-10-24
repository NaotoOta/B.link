class History < ActiveRecord::Base
  belongs_to :user
  has_many :cloths, through: :cloths_histories
  has_many :cloths_histories
  accepts_nested_attributes_for :cloths_histories
end
