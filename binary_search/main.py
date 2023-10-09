# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.


def binary_search(list, item):
    low = 0
    high = len(list) - 1

    while low <= high:  # 2 While you haven’t narrowed it down to one element...
        mid = (low + high) // 2
        guess = list[mid]

        if guess == item:  # 5 Found the item.
            return mid
        if guess > item:  # 6 The guess was too high.
            high = mid - 1
        else:  # 7 The guess was too low.
            low = mid + 1
    return None  # 8 the item doesn't exist.


if __name__ == '__main__':
    my_list = [1, 3, 5, 7, 9]
    print(binary_search(my_list, 9))