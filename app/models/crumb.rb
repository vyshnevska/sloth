class Crumb < ActiveRecord::Base
  validates :label, presence: true
  validates :number, presence: true
  validates :field_key, uniqueness: true, presence: true

  scope :visible, lambda { where(visible: true) }
  scope :nested,  lambda { where("visual_options @> hstore(?, ?)",'has_nested', 'true') }

  def nested_elements
    nested_elements = []
    if self.visual_options['has_nested'] == "true"
      master_key = self.visual_options['master_key'] ? self.visual_options['master_key'] : self.field_key

      nested_elements = self.class.nested.select{ |crumb| crumb.visual_options.has_key?('master_key') }
    end
    nested_elements
  end
end
