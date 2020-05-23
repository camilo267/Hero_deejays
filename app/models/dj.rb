class Dj < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user, foreign_key: :manager_id
  validates :name, :address, :dj_price, :description, :email, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


end
