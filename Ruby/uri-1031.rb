# frozen_string_literal: true

# URI - 1031: https://www.urionlinejudge.com.br/judge/pt/problems/view/1031

def determine_minimum_jump(regions_number)
  return 1 if regions_number == 13

  jump = 2
  loop do
    break if get_last_region_for(regions_number, jump) == '13'

    jump += 1
  end
  jump
end

def get_last_region_for(regions_number, jump)
  regions = []
  initialize_regions(regions, regions_number)
  delete_regions(regions, jump)
  regions.join
end

def initialize_regions(regions, regions_number)
  regions_number.times { |index| regions << index + 1 }
end

def delete_regions(regions, jump)
  region_to_delete = 0
  while regions.length > 1
    if region_to_delete > regions.length
      region_to_delete = region_to_delete % regions.length
    elsif region_to_delete == regions.length
      region_to_delete = 0
    else
      regions.delete_at(region_to_delete)
      region_to_delete += jump - 1
    end
  end
end

loop do
  regions_number = gets.to_i
  break if regions_number.zero?

  puts determine_minimum_jump(regions_number)
end
