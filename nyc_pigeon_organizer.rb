def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,value|
    value.each do |key2,pigeon_names|
      pigeon_names.each do |name|
    if pigeon_list[name] && pigeon_list[name][key]
      pigeon_list[name][key].push(key2)
    
    elsif pigeon_list[name]
        pigeon_list[name][key] = []
        pigeon_list[name][key].push(key2).to_s
        
    else
      pigeon_list[name] = {}
      pigeon_list[name][key] = []
      pigeon_list[name][key].push(key2).to_s
      end
     end
    end
  end
  pigeon_list
end
