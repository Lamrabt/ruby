require_relative "crypto"

def convert_string_to_float(arr)
     arr_f = Array.new
     arr.each do |val|
          arr_f.push(val.to_f)
     end

     return arr_f
end

def zip_wallet(keys, values)
     return Hash[keys.zip(values)]
end

def find_lowest_stock(wallet)
     sorted_wallet = wallet.sort_by {|key_, value_| value_}
     min = sorted_wallet[0][1]
     
     puts "Les ou la crypto avec la plus petite valeur est #{sorted_wallet.select{|key, value| value==min}}"
end

def find_highest_stock(wallet)
     sorted_wallet = wallet.sort_by {|key_, value_| value_}
     max = sorted_wallet[-1][1]

     puts "Les ou la crypto avec la plus petite valeur est #{sorted_wallet.select{|key, value| value==max}}"
end

def find_lower_than(wallet, threshold=1000)
     filtered_wallet = wallet.select {|key, value| value <= threshold}
     puts "Les devises dont le cours est inférieur à #{threshold} sont #{filtered_wallet}"
     return filtered_wallet
end

def perform
     currencies = CryptoModule::CRYPTO
     stock_price = CryptoModule::STOCK_PRICE

     stock_price = convert_string_to_float(stock_price)

     # Zip les crypto et leur valeur, ne print rien
     wallet = zip_wallet(currencies, stock_price)

     # La ou les crypto qui ont la plus petite valeur.
     find_lowest_stock(wallet)

     # La ou les crypto qui ont la plus grosse valeur.
     find_highest_stock(wallet)

     # Les devises dont le cours est inférieur à 6000
     filtered_wallet = find_lower_than(wallet, threshold=6000)

     # La devise la plus chère parmi celles dont le cours est inférieur à 6000.
     find_highest_stock(find_lower_than(wallet, threshold=6000))
     
end

perform