import Foundation

func sum(numbers: [Int]) -> Int {
    var numbers = numbers
    var total: Int = .zero
    if numbers.isEmpty {
        return total
    }

    total = numbers.popLast()! + sum(numbers: numbers)

    return total
}


sum(numbers: [1])
