import Foundation

func getGreatestValuefrom(list: [Int]) -> Int? {
    if list.isEmpty {
        return nil
    }

    var greatest = list.first!

    for num in list {
        if num > greatest {
            greatest = num
        }
    }
    return greatest
}

getGreatestValuefrom(list: [1, 2, 100, 40, 99])
