class Good < ApplicationRecord
  FIELDS = %w(id name description company_id active).map(&:to_sym).freeze
  belongs_to :company
  scope :active, -> do
    joins(:company).where('companies.active IS true and goods.active IS true')
  end


  def self.json_fields; FIELDS; end
end
