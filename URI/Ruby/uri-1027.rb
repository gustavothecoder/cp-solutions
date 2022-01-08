# URI - 1027: https://www.urionlinejudge.com.br/judge/pt/problems/view/1027

class CriticalWave
  def initialize
    @points = []
    @first_connection = true
    @goin_down = false
    @goin_up = false
    @number_of_connected_points = 0
    @index_of_last_connection = 0
  end

  def collect_points(number_of_points)
    number_of_points.times do
      coordinates = gets.split(' ')
      point = Point.new(coordinates[0].to_i, coordinates[1].to_i)
      @points << point
    end
  end

  def sort_points
    @points.sort! { |point_a, point_b| point_a.coordinate_x <=> point_b.coordinate_x }
  end

  def reset_points
    @points = []
  end

  def show_number_of_connected_points
    puts @number_of_connected_points
  end

  def set_the_maximum_number_of_connected_points
    maximum_number_of_connected_points = 0
    @points.each_with_index do |_point, index|
      current_number_of_connections = set_the_maximum_number_of_connections_from(index)
      if current_number_of_connections > maximum_number_of_connected_points
        maximum_number_of_connected_points = current_number_of_connections
      end
    end
    @number_of_connected_points = maximum_number_of_connected_points
  end

  private

  def reset_wave(index_of_point)
    @first_connection = true
    @goin_down = false
    @goin_up = false
    @index_of_last_connection = index_of_point
  end

  def set_the_maximum_number_of_connections_from(index_of_point)
    number_of_connections = 0
    maximum_number_of_connections = 0
    @index_of_last_connection = index_of_point
    possible_connections = []
    define_possible_connections(possible_connections, index_of_point)
    possible_connections.each do |index_of_possible_connection|
      (index_of_possible_connection..@points.length - 1).each do |index|
        there_was_connection = define_direction_of_the_wave(index)
        number_of_connections += 1 if there_was_connection
      end
      reset_wave(index_of_point)
      maximum_number_of_connections = number_of_connections if number_of_connections > maximum_number_of_connections
      number_of_connections = 0
    end
    maximum_number_of_connections + 1
  end

  def define_possible_connections(possible_connections, index_of_point)
    (index_of_point..@points.length - 1).each do |index|
      possible_connections << index if a_possible_connection?(index)
    end
  end

  def a_possible_connection?(index)
    the_last_connection_is_behind_the_point_to_be_tested(index) &&
      (the_point_to_be_tested_is_two_positions_above(index) ||
      the_point_to_be_tested_is_two_positions_below(index))
  end

  def the_last_connection_is_behind_the_point_to_be_tested(index)
    @points[index].coordinate_x > @points[@index_of_last_connection].coordinate_x
  end

  def the_point_to_be_tested_is_two_positions_above(index)
    @points[index].coordinate_y == @points[@index_of_last_connection].coordinate_y + 2
  end

  def the_point_to_be_tested_is_two_positions_below(index)
    @points[index].coordinate_y == @points[@index_of_last_connection].coordinate_y - 2
  end

  def define_direction_of_the_wave(index)
    if the_last_connection_is_behind_the_point_to_be_tested(index)
      return make_first_connection(index) if @first_connection

      return make_connection(index)
    end
    false
  end

  def make_first_connection(index)
    if the_point_to_be_tested_is_two_positions_above(index)
      make_first_connection_above(index)
      true
    elsif the_point_to_be_tested_is_two_positions_below(index)
      make_first_connection_below(index)
      true
    end
  end

  def make_connection(index)
    if @goin_down && the_point_to_be_tested_is_two_positions_above(index)
      rise_wave(index)
      true
    elsif @goin_up && the_point_to_be_tested_is_two_positions_below(index)
      go_down_wave(index)
      true
    end
  end

  def make_first_connection_above(index)
    @first_connection = false
    @goin_up = true
    @index_of_last_connection = index
  end

  def make_first_connection_below(index)
    @first_connection = false
    @goin_down = true
    @index_of_last_connection = index
  end

  def rise_wave(index)
    @goin_down = false
    @goin_up = true
    @index_of_last_connection = index
  end

  def go_down_wave(index)
    @goin_down = true
    @goin_up = false
    @index_of_last_connection = index
  end
end

class Point
  attr_reader :coordinate_x, :coordinate_y

  def initialize(coordinate_x, coordinate_y)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
  end
end

critical_wave = CriticalWave.new

while number_of_points = gets.to_i
  break if number_of_points <= 0

  critical_wave.collect_points(number_of_points)
  critical_wave.sort_points
  critical_wave.set_the_maximum_number_of_connected_points
  critical_wave.show_number_of_connected_points
  critical_wave.reset_points
end
