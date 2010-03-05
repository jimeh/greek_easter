class GreekEaster
  
  def self.at(year = nil)
    date = self.easter(year)
		return "In the year #{date.year}, the Greek Easter is on #{date.strftime("%d %B")}.";
  end
  
  def self.easter(year = nil)
    year = Time.now.year if year.nil?
    year = year.to_i if year.is_a?(String)
    a = year % 19
    b = year % 4
    c = year % 7
    d = (19 * a + 16) % 30
    e = (2 * b + 4 * c + 6 * d) % 7;
  	easter = 3 + d + e;
  	if easter <= 30
  	  Time.local(year, 4, easter)
  	else
  	  Time.local(year, 5, (easter - 30))
  	end
  end
  
end