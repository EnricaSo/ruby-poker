require 'csv'

d = DateTime.now
# time = d.strftime('%d_%m_%Y__%H_%M')
date = d.strftime('%d_%m_%Y')
filename = 'preflop' << '_' << date << '.csv'
puts filename
CSV.open('preflop_17_06_2017.csv', 'wb') do |csv|
  csv << ['m']
  csv.close
end
CSV.open(filename, 'wb') do |csv|
  csv << ['m']
  csv.close
end
