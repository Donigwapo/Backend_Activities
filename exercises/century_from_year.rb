def centuryFromYear(year)
    century = (year - 1) / 100 + 1
    puts century
  end
  
  centuryFromYear(1705)
  centuryFromYear(1900)
  centuryFromYear(1601)
  centuryFromYear(2000)