require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day]<< supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]= supply_array 
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holidaysupplies=[]
  holiday_hash[:winter][:christmas].each do |sup|
    holidaysupplies<< sup
  end
  holiday_hash[:winter][:new_years].each do  |sup|
    holidaysupplies << sup
  end
  holidaysupplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, key|
    puts season.to_s[0].upcase + season.to_s[1..-1] + ":"
    key.each do |hol, sup|
      holiday=hol.to_s.split("_")
      holiday.map do |val|
        val.capitalize!
      end
      puts "  " + holiday.join(" ") + ": " + sup.join(", ")
      
    end
  
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbqhol=[]
  holiday_hash.each do |season, holiday|
    holiday.each do |event, supply|
      if supply.include?"BBQ"
        bbqhol<< holiday
      end
    end
    
  end
  return bbqhol
  
end







