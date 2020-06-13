# Leetcode Solutions In Swift

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
