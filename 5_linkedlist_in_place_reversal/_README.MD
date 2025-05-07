# LinkedList In-Place Reversal

## Overview
The in-place reversal of a Linked List pattern reverses all or part of a Linked List **without using extra space**. It uses three pointers to traverse and rewire the list efficiently.

## Analogy
Imagine your linked list as a train of connected cars. Each car (node) has some cargo (data) and a hook (pointer) to the next car. Reversing the train in-place means unhooking and re-hooking the cars so they face the opposite direction—all without adding or removing any cars.

## Key Concepts
1. Use three pointers: `previous`, `current`, and `next`
2. Set `previous` to `null` and `current` to the head of the Linked List
3. Use a `while` loop to traverse the list until `current` is `null`  
   - In each iteration:
     - Save `next = current.next`
     - Reverse the pointer: `current.next = previous`
     - Move `previous = current`
     - Move `current = next`
4. At the end of the loop, `previous` will point to the new head of the reversed Linked List

## Applications
The in-place reversal technique is useful in problems that require re-arranging the links between nodes without using additional memory. Some common applications include:

- Reversing an entire Linked List
- Reversing a sublist within a Linked List (e.g., from position `m` to `n`)
- Checking if a Linked List is a palindrome
- Detecting and removing cycles (combined with other techniques)
- Implementing undo features using linked history

## Example

**Problem:** Reverse a sublist from position 2 to 4 in the Linked List

### Input:
1 → 2 → 3 → 4 → 5 → null


### Step-by-Step Explanation:
1. **Locate the sublist to reverse:**
   - Traverse to node at position 1 (node before the sublist starts).
   - Keep a pointer to this node (`sublist_prev`) for reconnection.

2. **Reverse the sublist from node 2 to node 4 using three pointers:**
   - Initialize `prev = null`, `curr = node 2`
   - For each node from 2 to 4:
     - Save `next = curr.next`
     - Point `curr.next` to `prev`
     - Move `prev = curr`
     - Move `curr = next`

3. **Reconnect the reversed sublist with the main list:**
   - `sublist_prev.next` should now point to node 4 (new head of the reversed sublist)
   - Node 2 (which is now the end of the reversed sublist) should point to node 5

4. **Resulting Linked List:**
    1 → 4 → 3 → 2 → 5 → null
