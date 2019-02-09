require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'adresses_list.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
t = Information .new
t.person = row['Person']
t.oa11 = row['oa11']
t.address1 = row['Address1']
t.address2 = row['Address2']
t.address3 = row['Address3']
t.town = row['Town']
t.county = row['County']
t.postcode = row['Postcode']
t.save
puts "#{t.person}, #{t.postcode} saved"
end

puts "There are now #{Information.count} rows in the transactions table"
