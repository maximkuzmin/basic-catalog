class Company < ApplicationRecord
  FIELDS = %w(id name active).map(&:to_sym).freeze

  has_many :goods, dependent: :destroy
  has_many :active_goods, -> { where active: true }, class_name: 'Good'

  def self.json_fields; FIELDS; end
end
