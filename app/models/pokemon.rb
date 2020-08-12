class Pokemon < ApplicationRecord
    has_many :pmoves
    validates :name, length: { maximum: 12 }, presence: true
    validates :hp, presence: true
    validates :atk, presence: true
    validates :dfc, presence: true
    validates :sat, presence: true
    validates :sdf, presence: true
    validates :spd, presence: true
end
