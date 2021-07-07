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

# pigeon_list = {
#   "NAME" => {
#     :color => [],
#     :gender => [],
#     :lives => []
#     }
# },

def nyc_pigeon_organizer(data)
  pigeon_list = {} #define empty hash to hold pigeon data
  #populate pigeon_list hash with pigeon names from data
  data.each do |attribute, detail|
    detail.each do |detail2, pigeon_names|
      pigeon_names.each do |name|
        if pigeon_list.key(name) == nil
          pigeon_list["#{name}"] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
  end
  # iterate through the data to insert the appropriate attributes for each pigeon
  data.each do |attribute, detail|
    detail.each do |detail2, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list["#{name}"][attribute] << detail2.to_s
      end
    end
  end
  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
