class Team < ApplicationRecord
    validates_presence_of :name
    validates_uniqueness_of :name

    has_one :manager
    has_many :players, dependent: :destroy

    accepts_nested_attributes_for :manager
    accepts_nested_attributes_for :players, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
end
