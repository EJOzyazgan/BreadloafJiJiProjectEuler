# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# Using 1 Jan 1900 was a Monday as reference point
def getFirstDayOfYear(year)
  currentDay = 1
  currentYear = 1900
  leapYearCount = 0

  while currentYear < year
    currentYear = currentYear + 1
    currentDay = currentDay + 1
    leapYearCount = leapYearCount + 1

    if (currentDay > 7)
      currentDay = 1
    end

    if (leapYearCount > 4)
      leapYearCount = 1
      currentDay = currentDay + 1

      if (currentDay > 7)
        currentDay = 1
      end
    end
  end

  return currentDay
end

def getNumSundaysInYear(year)
  numSundays = 0
  currentDay = getFirstDayOfYear(year)

  # print " START DAY: ", currentDay, " "

  daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  daysInMonth.each do |days|
    if (days ===  28 and year % 4 === 0)
      days = days + 1
    end

    remainderDays = days % 7
    
    if (currentDay + remainderDays > 7)
      currentDay = currentDay + remainderDays - 7
    else
      currentDay = currentDay + remainderDays
    end

    if (currentDay === 7)
      numSundays = numSundays + 1
    end
  end

  return numSundays
end

def countFirstDaySundays(startYear, endYear)
  numSundays = 0
  currentYear = startYear

  while currentYear <= endYear
    numSundayInYear = getNumSundaysInYear(currentYear)

    # print currentYear, " ", numSundayInYear, "\n"

    numSundays = numSundays + numSundayInYear
    currentYear = currentYear + 1
  end

  return numSundays
end

puts countFirstDaySundays(1901, 2000)