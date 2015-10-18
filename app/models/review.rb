class Review < ActiveRecord::Base
  belongs_to :company
  # validates :stars, presence: true
  # validates :stars numericality: {only_integer: true, greater_than: 0}

  def show_stars
    if stars == nil || stars == 0
      "5star.png"
    else
      "#{stars}star.png"
  end
  end
end
