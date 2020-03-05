print 'Enter date of month: '
date = gets.chomp.to_i
print 'Enter name of month: '
month = gets.chomp[0..2].to_sym
print 'Enter year: '
year = gets.chomp.to_i

date_ordinal = date
months = {jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31, aug: 31, sep: 30, oct: 31, nov: 30, dec: 31}
months.each do |m, n|
  if m == month
    break
  else
    date_ordinal += n
  end
end

if (year % 400) == 0
  puts "It's a leap year. Ordinal number of date: #{date_ordinal + 1}."
elsif (year % 100) == 0
  puts "It's not a leap year. Ordinal number of date: #{date_ordinal}."
elsif (year % 4) == 0
  puts "It's a leap year. Ordinal number of date: #{date_ordinal + 1}."
else
  puts "It's not a leap year. Ordinal number of date: #{date_ordinal}."
end

