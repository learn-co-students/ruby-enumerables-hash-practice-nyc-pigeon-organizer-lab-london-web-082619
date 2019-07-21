def nyc_pigeon_organizer(data)
  listed_by_name = {}
  data.each do |atributes, value| # color/gender etc and its value
  value.each do |desription, names| # grey/male and its value
  names.each do |name| #array of names
  if listed_by_name.has_key?(name)
    if listed_by_name[name].has_key?(atributes)
      listed_by_name[name][atributes] << desription.to_s
    else
      listed_by_name[name][atributes] = [desription.to_s]
    end
    else
    listed_by_name[name] = {atributes => [desription.to_s]}
  end
end
end
end
return listed_by_name
end