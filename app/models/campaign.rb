class Campaign < ApplicationRecord
  belongs_to :organization
  has_many   :donations

end
