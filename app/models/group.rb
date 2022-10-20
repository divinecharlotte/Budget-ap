class Group < ApplicationRecord
  belongs_to :user
  has_many :bills, dependent: :destroy
  belongs_to :user

  
  validates :name, presence: true
  validates :icon, presence: true

  def icons
    JSON.parse(File.read('./app/icons/icons.json'))
  end
end
