class Company < ActiveRecord::Base
  validates :name, :street, :city, :state, :service, presence: true
  validates :zip, :phone, numericality: {only_integer: true, greater_than: 0}
  has_many :reviews
end
