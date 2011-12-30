class Reserve < ActiveRecord::Base
  belongs_to :client
  belongs_to :movie
end
