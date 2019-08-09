def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each_pair do | property, variant |
    variant.each_pair do | variant, names |
      names.each do | name |
        puts "Name: #{name}"
        unless new_hash.has_key?(name)
          puts "Name no key: #{name}"
          new_hash[name] = {}
        end
        
        if new_hash[name][property]
          puts "Hash name and property pre: #{new_hash[name][property]}"
          new_hash[name][property] << variant.to_s
          puts "Hash name and property post: #{new_hash[name][property]}"
        else
          puts "Hash name and property pre: #{new_hash[name][property]}"
          new_hash[name][property] = [variant.to_s]
          puts "Hash name and property post: #{new_hash[name][property]}"
        end
        
      end
    end
  end
  p new_hash
end

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
      
nyc_pigeon_organizer(pigeon_data)