def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,value|
    value.each do |key2,name|
    if pigeon_list[name]
      if pigeon_list[name][key]
      pigeon_list[name][key].push(value)
      else
        pigeon_list[name][key] = []
        pigeon_list[name][key].push(value).to_s
      end
    else
      pigeon_list[name] = {}
      pigeon_list[name][key] = []
      pigeon_list[name][key].push(value).to_s
      end
    end
  end
  pigeon_list
end
