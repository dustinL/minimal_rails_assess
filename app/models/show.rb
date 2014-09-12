class Show < ActiveRecord::Base
  validates :location, :presence => :true
  belongs_to :artist
  # validates :date

end
