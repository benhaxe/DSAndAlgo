# Data Structures and Algorithms Guide

## Data Structures
Understanding these fundamental data structures is crucial:

### Arrays
- Linear collection of elements
- Fixed size (in most languages)
- O(1) access time
- Used for: Storing sequential data, implementing other data structures

### Linked Lists
- Linear collection of nodes
- Dynamic size
- O(n) access time
- Used for: Implementing stacks, queues, and other dynamic data structures

### Maps (Dictionaries)
- Key-value pairs
- O(1) average case access
- Used for: Fast lookups, counting frequencies, caching

## Algorithms

### Searching Algorithms

#### Binary Search
- O(log n) time complexity
- Requires sorted array
- Used for: Finding elements in sorted arrays
```dart
int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (arr[mid] == target) return mid;
    if (arr[mid] < target) left = mid + 1;
    else right = mid - 1;
  }
  return -1;
}
```

#### Linear Search
- O(n) time complexity
- Works on unsorted arrays
- Used for: Simple element finding in small datasets

### Sorting Algorithms

#### Quick Sort
- O(n log n) average case
- O(n²) worst case
- Used for: General-purpose sorting
```dart
void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}
```

### Tree Traversals
For Binary Trees:

#### Pre-order Traversal
- Root → Left → Right
- Used for: Creating a copy of the tree

#### In-order Traversal
- Left → Root → Right
- Used for: Getting elements in sorted order (BST)

#### Post-order Traversal
- Left → Right → Root
- Used for: Deleting the tree

## Complexity Analysis
| Operation | Array | Linked List | Map |
|-----------|-------|-------------|-----|
| Access | O(1) | O(n) | O(1) |
| Search | O(n) | O(n) | O(1) |
| Insert | O(n) | O(1) | O(1) |
| Delete | O(n) | O(1) | O(1) |