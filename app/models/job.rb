class Job < ActiveRecord::Base
  belongs_to :advertisement
 has_many :cities
has_many :organizations
end
