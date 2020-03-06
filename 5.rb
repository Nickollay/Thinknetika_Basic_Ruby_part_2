print 'Enter date of month: '
date = gets.chomp.to_i
print 'Enter name of month: '
month = gets.chomp[0..2].to_sym
print 'Enter year: '
year = gets.chomp.to_i

months = {
    jan: 31,
    feb: 28,
    mar: 31,
    apr: 30,
    may: 31,
    jun: 30,
    jul: 31,
    aug: 31,
    sep: 30,
    oct: 31,
    nov: 30,
    dec: 31
}
months[:feb] = 29 if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
date_ordinal = months.values.take(months.keys.find_index(month)).sum + date

if months[:feb] == 28
  puts "It's not a leap year."
else
  puts "It's a leap year."
end
puts "Ordinal number of date: #{date_ordinal}."