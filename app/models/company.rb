class Company < ApplicationRecord
  has_many :goods
  FIELDS = %w(id name active).map(&:to_sym).freeze

  def self.json_fields; FIELDS; end
end
