class Pet < ApplicationRecord
  has_many :pet_histories 
  belongs_to :client 

  def history_count
    #TODO-implement
    pet_histories.count 
  end

  def avg_weight
    #TODO-implement
    pet_histories.average(:weight)
  end

  def avg_height
    #TODO-implement
    pet_histories.average(:heigth)
  end

  def max_weight
    #TODO-implement
    pet_histories.pluck(:weight).max
  end

  def max_height
    #TODO-implement
    pet_histories.pluck(:heigth).max
  end

end
