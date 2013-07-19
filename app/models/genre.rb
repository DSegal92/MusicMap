class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :artists
  belongs_to :user
end
