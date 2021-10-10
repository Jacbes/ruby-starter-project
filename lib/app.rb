require_relative 'temperature_builder'

@types = %w[C K F]
@states = %w[y n]
@exit = 'y'
while @exit == 'y'
  @builder = TemperatureBuilder.new
  puts 'Input type temperature from convert:'
  @from = $stdin.gets.chomp until @types.include?(@from)
  puts 'Input value:'
  @value = $stdin.gets.to_f
  puts 'Input type temperature to convert:'
  @to = $stdin.gets.chomp until @types.include?(@to) && (@to != @from)
  @result = @builder.type_set(@from)
                    .value_set(@value)
                    .convert_to(@to)

  puts "Convert from #{@from} to #{@to} result: #{@result}"
  puts 'Wanna repeat? [y, n]'
  @exit = $stdin.gets.chomp
  @exit = $stdin.gets.chomp until @states.include?(@exit)
  @from = nil
  @value = nil
  @to = nil
end
