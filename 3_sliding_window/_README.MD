# Sliding Window Technique

## Overview

The **Sliding Window** technique is a powerful algorithmic approach used to solve problems involving contiguous sub-sequences within a larger sequence, such as arrays or strings. It significantly improves performance over brute-force solutions by efficiently reusing calculations.

---

## How it Works

The basic idea is to define a "window" that slides through the sequence. This window represents a subset of the data. We perform operations within this window and then move it one element to the right at a time. The key is to **avoid redundant calculations** by updating the window’s contents instead of recalculating from scratch.

---

## Types of Sliding Windows

### 1. Fixed Size Window

- The window has a predefined length `k`.
- Ideal for problems like finding the maximum sum of a subarray of size `k`.

### 2. Variable Size Window

- The window can expand or contract based on problem-specific conditions.
- Useful for problems such as finding the shortest subarray that satisfies a certain condition.

---

## When to Use Sliding Window

Use the sliding window technique when:

- The problem involves finding a **sub-sequence** (subarray or substring).
- The input is a **sequential collection** (array, string, or linked list).
- Brute-force solutions have **high time complexity** (e.g., O(n²) or O(n³)).
- The problem requires **optimized traversal** of contiguous sub-sequences.

---

## Common Applications

- Finding the maximum or minimum sum of a subarray of a fixed size.
- Finding the longest or shortest substring with a specific property (e.g., no repeating characters).
- Counting occurrences of a pattern or anagram in a string.
- Finding subarrays with a target sum.

---

## Benefits

- **Reduced Time Complexity:** Often reduces O(n²) to O(n).
- **Efficient Computation:** Reuses previously computed values.
- **Improved Performance:** Optimized for problems involving sub-sequences.

---

## Examples

### 📌 Example 1: Fixed Size Window

**Problem:**  
Given an array of integers, find the maximum sum of any contiguous subarray of size `k`.

**Input:**  
`arr = [1, 3, -2, 4, -1, 5]`, `k = 3`

**Output:**  
`8` (Subarray `[4, -1, 5]`)

**Explanation:**
Initial window: [1, 3, -2] → sum = 2
Slide right: [3, -2, 4] → sum = 5
Slide right: [-2, 4, -1] → sum = 1
Slide right: [4, -1, 5] → sum = 8

### 📌 Example 2: Variable Size Window

**Problem:**  
Given an array of positive integers and a target sum `S`, find the length of the smallest contiguous subarray whose sum is greater than or equal to `S`.

**Input:**  
`arr = [2, 3, 1, 2, 4,]`, `S = 7`

**Output:**  
`2` (Subarray `[4, 3]`)

**Explanation:**
Initialize: start = 0, end = 0, currentSum = 0, minLength = Infinity

Expand window → currentSum >= S?
- If yes → record minLength and contract from start
- If no → expand to next element

Repeat until end of array
