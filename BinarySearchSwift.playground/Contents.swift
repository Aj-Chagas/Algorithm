import Foundation

func getIndexBinarySearch(list: [Int], item: Int) -> Int? {
    var low = 0
    var high = list.count - 1

    while low <= high {
        var middle = (low + high) / 2
        var guess = list[middle]

        if guess == item {
            return middle
        } else if guess > item {
            high = middle - 1
        } else {
            low = middle + 1
        }
    }
    return nil
}

let list = Array(1...100)
getIndexBinarySearch(list: list, item: 5)
