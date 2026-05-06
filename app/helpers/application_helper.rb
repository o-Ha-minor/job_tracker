module ApplicationHelper
 def format_japanese_era_date(date)
   return "-" if date.blank?

   if date >= Date.new(2019, 5, 1)
    reiwa_year = date.year - 2018
    "R#{reiwa_year}.#{date.month}.#{date.day}"
   elsif date >= Date.new(1989, 1, 8)
    heisei_year = date.year - 1988
    "H#{heisei_year}.#{date.month}.#{date.day}"
   else
    "#{date.year}.#{date.month}.#{date.day}"
   end
 end
end
