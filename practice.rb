# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#for user in blockchain
#  name = user[from_user]
#  amount = user[amount]
#  puts "#{name}'s KelloggCoin balance is #{amount}"
#end
#puts [blockchain]
wallet = [
  { "name" => "ben", "balance" => 0 },
  { "name" => "brian", "balance" => 0 },
  { "name" => "evan", "balance" => 0 },
  { "name" => "anthony", "balance" => 0 }
]

for line in blockchain
  if line["from_user"] == nil 
    for person in wallet
      if line["to_user"] == person["name"]
        person["balance"] = person["balance"] + line["amount"]
        #puts "#{person["name"]} now has #{person["balance"]}" 
      end
    end  
  else
    for person in wallet
      if line["to_user"] == person["name"]
        person["balance"] = person["balance"] + line["amount"]
        #puts "#{person["name"]} now has #{person["balance"]}" 
      end
      if line["from_user"] == person["name"]
        person["balance"] = person["balance"] - line["amount"]
        #puts "#{person["name"]} now has #{person["balance"]}" 
      end
    end
  end
end

for person in wallet
  puts "#{(person["name"]).capitalize}'s KelloggCoin balance is #{person["balance"]}"
end
