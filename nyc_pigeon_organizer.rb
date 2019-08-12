def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,value|
    value.each do |key2,pigeon_names|
      
    if pigeon_list[name]
      if pigeon_list[name][key]
      pigeon_list[name][key].push(key2)
      else
        pigeon_list[name][key] = []
        pigeon_list[name][key].push(key2).to_s
      end
    else
      pigeon_list[name] = {}
      pigeon_list[name][key] = []
      pigeon_list[name][key].push(key2).to_s
      end
    end
  end
  pigeon_list
end
