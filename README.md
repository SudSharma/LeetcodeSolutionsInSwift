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
