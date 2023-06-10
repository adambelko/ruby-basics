def bubble_sort(numbers)
    def decide(numbers)
        swapped = false

        (0...numbers.length - 1).each_with_index do |number, index|
            if numbers[index] > numbers[index + 1]
                numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
                swapped = true
            end
        end
        swapped
    end

    while decide(numbers) == true
        decide(numbers)
    end
    p numbers
end

bubble_sort([4,3,78,2,0,2])
