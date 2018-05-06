def begins_with_r(tools)
  tools.all? do |tool|
    tool[0] == "r"
  end
end


def contain_a(list)
  list.select do |element|
    element.include?("a")
  end
end


def first_wa(list)
  list.find do |element|
    element[0,2] == "wa"
  end
end


def remove_non_strings(list)
  list.delete_if do |string|
    string.is_a?(String) == false
  end
end

def count_elements(list)
  list.uniq.each do |element|
    count = 0
    list.each do |element2|
      element == element2 ? count += 1 : count
    end
    element[:count] = count
  end
end


def merge_data(list,data)
  list.each do |element|
    data.each do |element2|
      element2[element[:first_name]].each do |key, value|
        element[key] = value
      end
    end
  end
  return list
end


def find_cool(list)
  list.select do |element|
    element[:temperature] == "cool"
  end
end


def organize_schools(schools)
  schools_by_location = {}
  schools.each do |key,value|
    if schools_by_location[value[:location]] == nil
      schools_by_location[value[:location]] = [key]
    else
      schools_by_location[value[:location]] << key
    end
  end
  schools_by_location
end
