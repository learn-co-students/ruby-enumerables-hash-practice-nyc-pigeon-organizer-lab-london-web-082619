def nyc_pigeon_organizer(data)
  new = {}
  data.each{|attribute, data_hash|
  data_hash.each{|property, names|
  names.each{|name|
   if !new.has_key?(name)
     new[name] = {} 
   end 
   
   if !new[name].has_key?(attribute)
     new[name][attribute] = []
   end 
   
   if !new[name][attribute].include?(property)
     new[name][attribute] << property.to_s 
   end 
  }
  }
  } 
 new
  
end
