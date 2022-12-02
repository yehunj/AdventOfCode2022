def part1
    file = File.open("input.txt", "r")
    data = file.read.split("\n\n")
    calories = data.map {|x| x.split("\n").map {|y| y.split(" ")[-1].to_i}.reduce(:+)}
    puts calories.max
end

def part2
    input = File.read('input.txt').split("\n\n").map { |x| x.split("\n").map(&:to_i) }
    puts input.map { |x| x.inject(:+) }.sort.last(3).inject(:+)
end