require_relative 'temperature_builder'

@types = %w[C K F]
@states = %w[y n]
loop do
  builder = TemperatureBuilder.new
  puts 'Input type temperature from convert (C, K, F):'
  from = $stdin.gets.chomp until @types.include?(from)
  puts 'Input value:'
  value = $stdin.gets.to_f
  puts 'Input type temperature to convert (C, K, F):'
  to = $stdin.gets.chomp until @types.include?(to) && (to != from)
  result = builder.type_set(from)
                  .value_set(value)
                  .convert_to(to)

  puts "Convert from #{from} to #{to} result: #{result}"
  puts 'Wanna repeat? [y, n]'
  exit = $stdin.gets.chomp until @states.include?(exit)
  break if exit == 'n'
end
