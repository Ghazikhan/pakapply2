class City < ActiveRecord::Base
  belongs_to :institute
  belongs_to :job
end
