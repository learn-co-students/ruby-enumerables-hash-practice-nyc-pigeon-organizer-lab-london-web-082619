def nyc_pigeon_organizer(data)
    pigeon_data_by_name = {}
  
    # split out original data into each attribute and it's details
    data.each do | attribute, attribute_details |
      
    # further split out each attribute detail into it's specific attributes and the name of the pigeon 
        attribute_details.each do | specific_attributes, pigeon_names |
          
          # iterate through the pigeon names in order to act on each one
            pigeon_names.each do | pigeon_name |
              
            # add each pigeon name to it's own key in the new hash (pigeon_data_by_name) 
            # uses ||= to add each unique value as a new key in the hash rather than overwrite
              pigeon_data_by_name[pigeon_name] ||= {}
              
            # assign the original attribute key to the corresponding pigeon name 
            # attribute: value is an empty array
              pigeon_data_by_name[pigeon_name][attribute] ||= []
              
            # push the details of each attribute (e.g. colour = purple) to the empty array from previous step
              pigeon_data_by_name[pigeon_name][attribute].push(specific_attributes.to_s)
            end
        end
    end
    
    # return the new array 
    pigeon_data_by_name
end
