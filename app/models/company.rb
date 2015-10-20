class Company < ActiveRecord::Base
  validates :name, :street, :city, :state, :zip, :service, presence: true
  validates :zip, :phone, numericality: {only_integer: true, greater_than: 0}
  validates :zip, length: { is: 5}
  validates :phone, length: { is: 10}
  has_many :reviews, :dependent => :delete_all


  def address
    s = street.strip
    street+", "+city+", "+state+" "+zip.to_s
  end

  def increment_review

  end

  def review_total
    Review.count(:conditions => ["company_id = ?", @company.id])
  end

end
