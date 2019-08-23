def nyc_pigeon_organizer(data)
  seven_pigeons = {}
  data.each do |key, value|
    value.each do |value, name|
      name.each do |pigeon|
        seven_pigeons[pigeon] ||= {}
        seven_pigeons[pigeon][key] ||= []
        seven_pigeons[pigeon][key] << value.to_s
      end
    end    
  end
  seven_pigeons
end
