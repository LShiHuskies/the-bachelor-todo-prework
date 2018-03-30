def get_first_name_of_season_winner(data, season)
  # code here
  name_array = []
  first_name = ""
  data[season].each do |key_name|
      key_name.each do |keys, values|
          name_array.push(values) if keys == "name"
          name_array = name_array.uniq
          first_name = name_array.join(",")
          first_name = first_name.split.first
          #binding.pry
#      values.each do |key, string_value|
#          binding.pry
#          end
        end
      end
  #binding.pry
#      name_array.push(values) if key_name == "name"
#      end
#  binding.pry
first_name
end

def get_contestant_name(data, occupation)
  # code here
  name_array = []
  empty_hash = {}
  name_string = ""
 
 data["season 19"].each do |key_name|
            key_name.each do |keys, values|
                name_array.push(values) if keys == "name" && key_name.has_value?(occupation)
                #binding.pry
                end
            end
 data["season 18"].each do |key_name_two|
     key_name_two.each do |keys_two, values_two|
         name_array.push(values_two) if keys_two == "name" && key_name_two.has_value?(occupation)
         #binding.pry
         end
     end
 
 data["season 17"].each do |key_name_three|
     key_name_three.each do |keys_three, values_three|
         name_array.push(values_three) if keys_three == "name" && key_name_three.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 16"].each do |key_name_four|
     key_name_four.each do |keys_four, values_four|
         name_array.push(values_four) if keys_four == "name" && key_name_four.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 15"].each do |key_name_five|
     key_name_five.each do |keys_five, values_five|
         name_array.push(values_five) if keys_five == "name" && key_name_five.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 14"].each do |key_name_six|
     key_name_six.each do |keys_six, values_six|
         name_array.push(values_six) if keys_six == "name" && key_name_six.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 13"].each do |key_name_seven|
     key_name_seven.each do |keys_seven, values_seven|
         name_array.push(values_seven) if keys_seven == "name" && key_name_seven.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 12"].each do |key_name_eight|
     key_name_eight.each do |keys_eight, values_eight|
         name_array.push(values_eight) if keys_eight == "name" && key_name_eight.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 11"].each do |key_name_nine|
     key_name_nine.each do |keys_nine, values_nine|
         name_array.push(values_nine) if keys_nine == "name" && key_name_nine.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 10"].each do |key_name_ten|
     key_name_ten.each do |keys_ten, values_ten|
         name_array.push(values_ten) if keys_ten == "name" && key_name_ten.has_value?(occupation)
         #binding.pry
     end
 end
 
 data["season 9"].each do |key_name_eleven|
     key_name_eleven.each do |keys_eleven, values_eleven|
         name_array.push(values_eleven) if keys_eleven == "name" && key_name_eleven.has_value?(occupation)
         #binding.pry
     end
 end
 
#  data.each do |keys, values|
#      values.each do |second_keys, second_values|
          #binding.pry
          #if values.include?(occupation)
          
          # binding.pry
#          second_values.each do |third_keys, another_value|
#          binding.pry
#          end
          #binding.pry
          #binding.pry
#          type_info.each do |keys_info, value_occupation|
#              #binding.pry
#              name_array.push(value_occupation) if (keys_info == "name" && type_info.include?(occupation))
#              name_string = name_array.join(",")
#
#                binding.pry

#        end
#    end


  #binding.pry
  name_string = name_array.join(",")
  name_string
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  empty_array = []
  data.each do |keys, values|
      values.each do |second_keys|
          second_keys.each do |third_keys, third_values|
              #binding.pry
              empty_array.push(third_values) if third_keys == "name" && second_keys.has_value?(hometown)
      end
    end
  end
count = empty_array.length
end

def get_occupation(data, hometown)
  # code here
  empty_array = []
  string = ""
  data.each do |keys, values|
      values.each do |second_keys|
        second_keys.each do |third_keys, third_values|
            empty_array.push(third_values) if third_keys == "occupation" && second_keys.has_value?(hometown)
            #binding.pry
          end
          end
      end
  empty_array.push("test")
  if empty_array.length > 1
      until empty_array.length == 1
          empty_array.pop
          # binding.pry
          end
      end
  string = empty_array.join(",")
end

def get_average_age_for_season(data, season)
  # code here
  empty_array_age = []
  
  data[season].each do |keys, values|
      keys.each do |second_keys, second_values|
              empty_array_age.push(second_values) if second_keys == "age"
              #binding.pry
              end
          end
  
      int_array = empty_array_age.map(&:to_i)
      #binding.pry
      sum = 0
      int_array.each {|index| sum += index}
      number_of_people = empty_array_age.length
      average_age = (sum.to_f)/ (number_of_people.to_f)
      average_age = average_age.round

end
