def quicksort_in_place(arr, low, high):
    if low >= high:
        return

    pivot_index = partition(arr, low, high)
    quicksort_in_place(arr, low, pivot_index - 1)
    quicksort_in_place(arr, pivot_index + 1, high)

def partition(arr, low, high):
    pivot = arr[high]
    i = low - 1
    for j in range(low, high):
        if arr[j] <= pivot:
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1

# Example usage:
arr = [3, 6, 2, 8, 1, 4, 9, 5]
print("Input array:", arr)

quicksort_in_place(arr, 0, len(arr) - 1)
print("Sorted array:", arr)
