def main()
    input = File.read("input.txt").split("\n")
    score = 0
    input.each do |line|
        if line[0] == "A"
            if line[2] == "X"
                score += 4
            elsif line[2] == "Y"
                score += 8
            elsif line[2] == "Z"
                score += 3
            end
        elsif line[0] == "B"
            if line[2] == "X"
                score += 1
            elsif line[2] == "Y"
                score += 5
            elsif line[2] == "Z"
                score += 9
            end
        elsif line[0] == "C"
            if line[2] == "X"
                score += 7
            elsif line[2] == "Y"
                score += 2
            elsif line[2] == "Z"
                score += 6
            end
        end
    end
    puts score
end
main()