class Crumb < ActiveRecord::Base
  validates :label, presence: true
  validates :number, presence: true
  validates :field_key, uniqueness: true, presence: true

  scope :visible, lambda { where(visible: true) }
end
