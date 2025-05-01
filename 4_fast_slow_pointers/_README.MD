# Fast & Slow Pointers

## Overview
The Fast & Slow Pointers pattern (also known as the "Tortoise and Hare" algorithm) is an efficient technique used to detect cycles in linked lists and other similar structures. It works by moving two pointers at different speeds through the data structure - one pointer moving one step at a time (slow) and the other moving two steps at a time (fast).

## Key Concepts
1. If there is a cycle, the fast pointer will eventually meet the slow pointer
2. If the fast pointer reaches the end of the list, there is no cycle
3. The algorithm has O(n) time complexity and O(1) space complexity
4. The distance between the pointers decreases by 1 with each step

## Applications
- Detecting cycles in linked lists
- Finding the middle of a linked list
- Finding the start of a cycle in a linked list
- Detecting cycles in graphs
- Finding duplicate numbers in arrays

## Example
Consider a linked list with a cycle:
```
1 -> 2 -> 3 -> 4 -> 5 -> 3 (cycle back to 3)

Slow pointer path: 1 -> 2 -> 3 -> 4 -> 5 -> 3
Fast pointer path: 1 -> 3 -> 5 -> 3 -> 5 -> 3

The pointers will meet at node 3, confirming the cycle exists.
```
## Importance of ListNode
The list node class is essential becuase it defines the structure of a linked list node

## Basic Strcuture of a Lined List:
1. A linked list is made up of nodes
2. Each data"node" contains:
    a. Data (int, string etc.)
    b. A reference/pointer to the next node.

```dart
class ListNode {
  int val;        // Stores the data/value
  ListNode? next; // Reference to the next node
  ListNode(this.val, [this.next]);
}
// int val: Stores the actual data
// Listnode? next: A nullable refeence to the next node,
//  it has to be nullable becuase the last node's next should be null
// ListNode(this.val, [this.next]): constructor that makes it easy to create nodes

```
## Without ListNode, we won't be able:
1. To link nodes together
2. Traverse the list
3. Represent the structure if the LinkedList

## List Node Example
```dart
// Without ListNode class, we couldn't do this:
ListNode node1 = ListNode(1);
ListNode node2 = ListNode(2);
ListNode node3 = ListNode(3);

// Link them together
node1.next = node2;
node2.next = node3;

// Result: 1 -> 2 -> 3
```