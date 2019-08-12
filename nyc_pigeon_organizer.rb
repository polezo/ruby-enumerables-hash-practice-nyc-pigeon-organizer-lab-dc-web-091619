def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,value|
    value.each do |key2,name|
    if pigeon_list[name]
      if pigeon_list[memo][key]
      pigeon_list[memo][key].push(value)
      else
        pigeon_list[memo][key] = []
        pigeon_list[memo][key].push(value)
      end
    else
      pigeon_list[memo] = {}
      pigeon_list[memo][key] = []
      pigeon_list[memo][key].push(value)
      end
    end
  end
  pigeon_list
end
