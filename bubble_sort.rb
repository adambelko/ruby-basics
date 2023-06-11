def bubble_sort(numbers)
  def decide(numbers)
    swapped = false

    (0...numbers.length - 1).each_with_index do |_number, index|
      if numbers[index] > numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
        swapped = true
      end
    end
    swapped
  end

  decide(numbers) while decide(numbers) == true
  p numbers
end

bubble_sort([4, 3, 78, 2, 0, 2])
