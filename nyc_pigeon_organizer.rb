def nyc_pigeon_organizer(data)
  reorganized = {}
  
  #Crack open nested hashes until the name array is reached
  data.each_pair do | property, variant |
    variant.each_pair do | variant, names |
      names.each do | name |
        
        #If the name doesn't already exist in the reorganized hash, add the name key with an empty hash value
        unless reorganized.has_key?(name)
          reorganized[name] = {}
        end
        
        #Check whether the current name has the current property key
        unless reorganized[name].has_key?(property)
          reorganized[name][property] = []
        end

        #Append the variant to the property array
        reorganized[name][property] << variant.to_s
        
      end
    end
  end
  reorganized
end