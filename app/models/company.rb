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

  def avg_star
    if reviews.average(:stars) == 0 || reviews.average(:stars) == nil then
       "5star.png"
     else
      reviews.average(:stars).to_i.to_s+"star.png"
    end
  end

  def num_review
    "("+reviews.count.to_s+")"
  end


end
