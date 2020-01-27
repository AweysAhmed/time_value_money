require "time_value_money/version"
require "bigdecimal"


module TimeValueMoney
  class Error < StandardError; end
  
  def self.future_value(interest, years, cost)
    interestPlusOne = 1 + (interest / 100.0)
    fv = cost * (interestPlusOne **years)
    return fv.round(2)
  end



def self.present_value(interest, years, f_value)
  interestPlusOne = 1 + (interest / 100.0)
  pv = f_value / (interestPlusOne**years)
  return pv.round(2)
end

end
