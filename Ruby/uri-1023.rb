# URI - 1023: https://www.urionlinejudge.com.br/judge/pt/problems/view/1023

class City
  @@properties = []
  @@average_consumption_array = []
  @@average_city_consumption = 0

  def add_properties(*properties)
    properties.each do |property|
      @@properties << property
    end
  end

  def calculate_average_consumption_in_each_property
    @@properties.each do |property|
      average = property.consumption / property.number_of_residents
      index = property_index_with_that_consumption(average)
      if index.nil?
        property.consumption = average
        @@average_consumption_array << property
      else
        @@average_consumption_array[index].number_of_residents += property.number_of_residents
      end
    end
  end

  def sort_average_consumption_array
    @@average_consumption_array.sort! { |property_a, property_b| property_a.consumption <=> property_b.consumption }
  end

  def get_result_of_calculation_of_average_consumption_of_properties
    result = []
    @@average_consumption_array.each do |property|
      result << property.to_s
    end
    result
  end

  def calculate_average_consumption_in_the_city
    consumption = 0.0
    @@average_consumption_array.each do |avg|
      consumption += avg.consumption.to_f
    end
    @@average_city_consumption = (consumption / @@properties.length.to_f)
  end

  def get_average_consumption_in_the_city
    @@average_city_consumption.truncate(2)
  end

  def reset_arrays_of_properties
    @@properties = []
    @@average_consumption_array = []
  end

  private

  def property_index_with_that_consumption(average)
    @@average_consumption_array.find_index { |property| property.consumption == average }
  end
end

class Property
  attr_accessor :number_of_residents, :consumption

  def initialize(number_of_residents, consumption)
    @number_of_residents = number_of_residents
    @consumption = consumption
  end

  def to_s
    @number_of_residents.to_s + '-' + @consumption.to_s
  end
end

properties_number = 1
city = City.new
city_counter = 1
loop do
  properties_number = gets.to_i
  break if properties_number.zero?

  properties_number.times do
    property_info = gets.chomp.split(' ')
    city.add_properties(Property.new(property_info[0].to_i, property_info[1].to_i))
  end
  puts("Cidade# #{city_counter}:")
  city.calculate_average_consumption_in_each_property
  city.sort_average_consumption_array
  puts(city.get_result_of_calculation_of_average_consumption_of_properties.join(' '))
  city.calculate_average_consumption_in_the_city
  puts("Consumo medio: #{city.get_average_consumption_in_the_city} m3.\n\n")
  city.reset_arrays_of_properties
  city_counter += 1
end
