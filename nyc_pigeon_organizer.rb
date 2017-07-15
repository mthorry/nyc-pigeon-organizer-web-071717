require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_data = {}

  data.each do |keys, values|
    values.each do |traits, names|
      names.each do |name|
      # binding.pry
        pigeon_data[name] ||= {} #creates a new KEY for the pigeon_data hash for each pigeon name
        pigeon_data[name][keys] ||= [] #creates a new VALUES ARRAY using the KEYS from original data WITHIN the new NAME KEY
        pigeon_data[name][keys] << traits.to_s #addes each KEY to the new VALUES ARRAY as a string
      end
    end
  end
  pigeon_data
end