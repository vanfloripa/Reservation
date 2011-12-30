class Movie < ActiveRecord::Base
  has_many :reserves
end
