class Existence < ApplicationRecord
  scope :only_enter, -> { where(status: true) }
end
