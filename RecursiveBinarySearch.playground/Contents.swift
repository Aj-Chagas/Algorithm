import Foundation

func getIndexBinarySearchRecursive(list: [Int], item: Int, low: Int = .zero, high: Int = list.count) -> Int? {
    if low > high {
        return nil
    }

    let middle = (low + high) / 2
    let guess = list[middle]

    if guess == item {
        return middle
    } else if guess > item {
        return getIndexBinarySearchRecursive(list: list, item: item, low: low, high: middle - 1)
    } else {
        return getIndexBinarySearchRecursive(list: list, item: item, low: middle + 1, high: high)
    }
}

let list = Array(1...100)
getIndexBinarySearchRecursive(list: list, item: 5)
