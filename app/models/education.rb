class Education < ActiveRecord::Base
  belongs_to :user
  belongs_to :institute
  belongs_to :degree
end
