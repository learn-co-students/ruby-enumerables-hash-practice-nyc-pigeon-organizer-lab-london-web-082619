def nyc_pigeon_organizer(data)
  newly_organised_birbs = {}
  data.each do |attribute_key, attribute_hash|
    attribute_hash.each do |attribute_value, birb_names|
      birb_names.each do |name|
        #here you are delving into progressively deeper layers of the nested hash and basically naming the variables within each scope. Now, beneath here, is the code to operate on all of this:
        
    
        if !newly_organised_birbs[name]
          newly_organised_birbs[name] = {}
        end
          #here you are checking to see if the newly_organised_birbs hash *doesn't* (via !) contain the name variable. If not it will create a new key for each |name| and create an empty hash as its corresponding key.
          
          if !newly_organised_birbs[name][attribute_key]
            newly_organised_birbs[name][attribute_key] = []
          end
          #doing a similar thing here but within the 'name' key you just created in the newly_organised_birbs hash, you now create a second key value pair (with the value being an empty array) called attribute_key
          
          newly_organised_birbs[name][attribute_key] << attribute_value.to_s
        end
          #now you are copying the 'attribute_value' value of the original hash to the nested [attribute_key] that is within [name], in turn that is within newly_organised_birbs hash. Converting to a string with .to_s
          
  
      end
    end
    newly_organised_birbs
  end