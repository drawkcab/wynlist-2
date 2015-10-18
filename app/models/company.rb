class Company < ActiveRecord::Base
  validates :name, :street, :city, :state, :zip, :service, presence: true
  validates :zip, :phone, numericality: {only_integer: true, greater_than: 0}
  validates :zip, length: { is: 5}
  validates :phone, length: { is: 7}
  has_many :reviews

end
