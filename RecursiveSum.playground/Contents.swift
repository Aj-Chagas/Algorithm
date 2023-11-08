import Foundation

func sum(numbers: [Int]) -> Int {
    if numbers.isEmpty {
        return 0
    }
    return numbers.last! + sum(numbers: numbers.dropLast())
}

sum(numbers: [1, 2, 3, 4])
