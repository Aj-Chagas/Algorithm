
/// Selection sort is a neat algortithm, but it's not very fast O(nˆ2). Quicksort is a faster sorting algorithm that only takes O(n log n) time.

import Foundation

private func findSmallest(with array: [Int]) -> Int {
    var smallest = array.first ?? .zero
    var smallestIndex = Int.zero

    for (index, item) in array.enumerated() {
        if item < smallest {
            smallest = item
            smallestIndex = index
        }
    }
    return smallestIndex
}

func selectionSort(with array: inout [Int]) -> [Int] {
    var newArray: [Int] = []

    for _ in array {
        let minor = findSmallest(with: array)
        newArray.append(array.remove(at: minor))
    }

    return newArray
}

var array = [5, 6, 8, 9, 0]

selectionSort(with: &array)
