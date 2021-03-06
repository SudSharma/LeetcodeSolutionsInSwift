# Leetcode Solutions In Swift

1. Two Sum

<details><summary>Approach</summary>
<p>

1. Create a dictionary to keep the items already traversed in array with key as number in array and value as index of that number in array.
2. Start traversing the numbers array from the beginning.
3. If (target - number at current index) is present in dictionary return the combination.

</p>
</details>

83. Remove Duplicates from Sorted List

<details><summary>Approach</summary>
<p>

1. Traverse the link list to check if next node value is same as current node, If yes delete the next node.

</p>
</details>

274. H Index

<details><summary>Approach</summary>
<p>

1. Sort citations. 
2. Perform binary search as long as low <= high.

</p>
</details>

275. H Index II

<details><summary>Approach</summary>
<p>

1. Perform binary search as long as low <= high.

</p>
</details>

284. Peeking Iterator ()

<details><summary>Approach</summary>
<p>

`init(_ arr: IndexingIterator<Array<Int>>)`
1. Keep a reference of indexingIterator. 
2. Initialize an array with all the elements from iterator. 
3. Keep hasPeeked boolean to mark when the iterator is peeked
4. Keep peekedElement variable to keep reference of currently peeked element.

`next()` 
1. If hasPeaked is false, remove first element from array and return value returned by iterator.next
2. Else return peekedElement and set it to nil in deferred block.

`peek()`
1. If hasPeaked is false, remove first element from array and return value returned by iterator.next. Also set hasPeeked to true.
2. Else return peaked element

`hasNext()`
1. Return true if hasPeeked is true or array has elements

</p>
</details>

380. Insert Delete GetRandom O(1)

<details><summary>Approach</summary>
<p>

`insert(x)`
1. Check if x is already present in dictionary.
2. If not present, then insert it at the end of the array.
3. Add in the dictionary, x is added as key and last array index as the value.

`remove(x)`
1. Return false if dictionary is empty or val(key) is not present in dictionary
2. Get value for key from dictionary and swap element at that index with last index in array
3. Update swapped element value with its index in dictionary
4. Remove last element from array
5. Remove val(key) from dictionary 

`getRandom()`
1. Generate a random number from 0 to last index.
2. Return the array element at the randomly generated index.

`search(x)`
1. Do a lookup for x in dictionary.

</p>
</details>

386. Largest Divisible Subset

<details><summary>Approach</summary>
<p>

A simple solution is to generate all subsets of given set. For every generated subset, check if it is divisible or not. Finally return the largest divisible subset.

An efficient solution involves following steps.

1. Sort all array elements in increasing order. The purpose of sorting is to make sure that all divisors of an element appear before it.
2. Create an array divisorsCount[] of same size as input array. divisorsCount[i] stores size of divisible subset ending with sorted[i] (In sorted array). The minimum value of divisorsCount[i] would be 1.
3. Traverse all array elements. For every element, find a divisor sorted[j] with largest value of divisorsCount[j] and store the value of divisorsCount[i] as divisorsCount[j] + 1.

</p>
</details>

468. Validate IP Address

<details><summary>Approach</summary>
<p>

1. IPv4 - Check for components separated by ".". Count of components should be 4. Integer value should be in range of 0-255. Characters should be in range "0" - "9".  If integer value of component is greater than zero, it should not have a prefix of 0 and if integer value of component is zero its count should be 1
2. IPv6 - Check for components separated by ":". Count of components should be 8. Lowercased characters should be in range "0" - "9" and "a" and "f". Each component's count should be between 1 and 4

</p>
</details>

700. Search In A Binary Search Tree

<details><summary>Approach</summary>
<p>

1. Compare value with root and return true if value matches.
2. If value to be searched is less than root search in left sub tree.
3. If value to be searched is greater than root search in right sub tree.

</p>
</details>

981. Time Based Key-Value Store❗Time Limit Exceeded
