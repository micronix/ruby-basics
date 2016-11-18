require 'yaml'

ages = YAML.load(File.read('ages.yml'))
age_counts = Hash.new(0)

ages.each do |name, age|
  age_counts[age] = age_counts[age] + 1
end

puts age_counts.inspect
