require"pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, specific_attribute|
    specific_attribute.each do |second_attribute, name|
     name.each do |pigeon_name|
       #binding.pry
    if !pigeon_list[pigeon_name]
      pigeon_list[pigeon_name] = {}
    end
    if !pigeon_list[pigeon_name][attribute]
      pigeon_list[pigeon_name][attribute] = []
    end
    pigeon_list[pigeon_name][attribute] << second_attribute.to_s
   end
    end
  end
  #binding.pry
  pigeon_list
end
