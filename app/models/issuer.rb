class Issuer < ActiveRecord::Base
  validates_presence_of :code, :rfc, :name
  validates_uniqueness_of :code, :irs
end
