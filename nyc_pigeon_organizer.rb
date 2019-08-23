def nyc_pigeon_organizer(data)
  # write your code here!	  
  pigeon_list = {}

     data.each do |category,info_hash|
      info_hash.each do |attribute, name_set|
        name_set.each do |name|
          if pigeon_list[name]
            if pigeon_list[name][category]

               pigeon_list[name][category].push(attribute.to_s)
            else
              pigeon_list[name][category] = [attribute.to_s]
            end
          else
            pigeon_list[name] = {category => [attribute.to_s]}
          end
        end
      end
    end