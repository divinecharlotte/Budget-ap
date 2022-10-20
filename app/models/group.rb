class Group < ApplicationRecord
    belongs_to :user
    has_many :bills, dependent: :destroy
    belongs_to :user
end
