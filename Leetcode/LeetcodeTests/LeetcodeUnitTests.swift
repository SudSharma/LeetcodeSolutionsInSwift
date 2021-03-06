//
//  LeetcodeUnitTests.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/29/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

@testable import Leetcode
import XCTest

class LeetcodeUnitTests: XCTestCase {
    
    func test_1_TwoSum() throws {
        XCTAssertTrue(TwoSum().twoSum([2, 7, 11, 15], 9) == [0, 1])
        XCTAssertTrue(TwoSum().twoSum([2, 4, 4, 15], 8) == [1, 2])
        XCTAssertTrue(TwoSum().twoSum([230,863,916,585,981,404,316,785,88,12,70,435,384,778,887,755,740,337,86,92,325,422,815,650,920,125,277,336,221,847,168,23,677,61,400,136,874,363,394,199,863,997,794,587,124,321,212,957,764,173,314,422,927,783,930,282,306,506,44,926,691,568,68,730,933,737,531,180,414,751,28,546,60,371,493,370,527,387,43,541,13,457,328,227,652,365,430,803,59,858,538,427,583,368,375,173,809,896,370,789], 542) == [28, 45])
        XCTAssertTrue(TwoSum().twoSumBruteForce([2, 7, 11, 15], 9) == [0, 1])
    }
    
    func test_2_AddTwoNumber() throws {
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4)))) == ListNode(7, ListNode(0, ListNode(8))))
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(0), ListNode(0)) == ListNode(0))
        XCTAssertTrue(AddTwoNumbers().addTwoNumbers(ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))), ListNode(9, ListNode(9, ListNode(9, ListNode(9))))) == ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1)))))))))
    }
    
    func test_3_LongestSubstringWithoutRepeatingCharacters() throws {
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("aab") == 2)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("ohomm") == 3)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("abcabcbb") == 3)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("bbbbb") == 1)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("pwwkew") == 3)
        XCTAssertTrue(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("dvdf") == 3)
    }
    
    func test_5_LongestPalindromicSubstring() throws {
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("babad") == "bab")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("cbbd") == "bb")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("a") == "a")
        XCTAssertTrue(LongestPalindromicSubstring().longestPalindrome("ac") == "a")
    }
    
    func test_8_StringToIntegerATOI() throws {
        XCTAssertTrue(StringToIntegerATOI().myAtoi("2147483646") == 2147483646)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("20000000000000000000") == 2147483647)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("21474836460") == 2147483647)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("+-12") == 0)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("3.14159") == 3)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("42") == 42)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("   -42") == -42)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("4193 with words") == 4193)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("words and 987") == 0)
        XCTAssertTrue(StringToIntegerATOI().myAtoi("-91283472332") == -2147483648)
    }
    
    func test_11_ContainerWithMostWater() throws {
        XCTAssertTrue(ContainerWithMostWater().maxArea([1,8,6,2,5,4,8,3,7]) == 49)
        XCTAssertTrue(ContainerWithMostWater().maxArea([1,1]) == 1)
        XCTAssertTrue(ContainerWithMostWater().maxArea([4,3,2,1,4]) == 16)
        XCTAssertTrue(ContainerWithMostWater().maxArea([1,2,1]) == 2)
        XCTAssertTrue(ContainerWithMostWater().maxArea([2,3,4,5,18,17,6]) == 17)
    }
    
    func test_12_IntegerToRoman() throws {
        XCTAssertTrue(IntegerToRoman().intToRoman(3) == "III")
        XCTAssertTrue(IntegerToRoman().intToRoman(4) == "IV")
        XCTAssertTrue(IntegerToRoman().intToRoman(9) == "IX")
        XCTAssertTrue(IntegerToRoman().intToRoman(58) == "LVIII")
        XCTAssertTrue(IntegerToRoman().intToRoman(1994) == "MCMXCIV")
    }
    
    func test_13_RomanToInteger() throws {
        XCTAssertTrue(RomanToInteger().romanToInt("III") == 3)
        XCTAssertTrue(RomanToInteger().romanToInt("IV") == 4)
        XCTAssertTrue(RomanToInteger().romanToInt("IX") == 9)
        XCTAssertTrue(RomanToInteger().romanToInt("LVIII") == 58)
        XCTAssertTrue(RomanToInteger().romanToInt("MCMXCIV") == 1994)
    }
    
    func test_15_ThreeSum() throws {
        XCTAssertTrue(ThreeSum().threeSum([-1,0,1,2,-1,-4]) == [[-1,-1,2],[-1,0,1]])
        XCTAssertTrue(ThreeSum().threeSum([]) == [])
        XCTAssertTrue(ThreeSum().threeSum([0]) == [])
    }
    
    func test_17_LetterCombinationsOfAPhoneNumber() throws {
        XCTAssertTrue(LetterCombinationsOfAPhoneNumber().letterCombinations("23") == ["ad","ae","af","bd","be","bf","cd","ce","cf"])
        XCTAssertTrue(LetterCombinationsOfAPhoneNumber().letterCombinations("") == [])
        XCTAssertTrue(LetterCombinationsOfAPhoneNumber().letterCombinations("2") == ["a","b","c"])
    }
    
    func test_20_ValidParentheses() throws {
        XCTAssertFalse(ValidParentheses().isValid("["))
        XCTAssertTrue(ValidParentheses().isValid("()"))
        XCTAssertTrue(ValidParentheses().isValid("()[]{}"))
        XCTAssertFalse(ValidParentheses().isValid("(]"))
        XCTAssertFalse(ValidParentheses().isValid("([)]"))
        XCTAssertTrue(ValidParentheses().isValid("{[]}"))
    }
    
    func test_21_MergeTwoSortedLists() throws {
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(ListNode(1, ListNode(2, ListNode(4))), ListNode(1, ListNode(3, ListNode(4)))) == ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4)))))))
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(nil, nil) == nil)
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(nil, ListNode(0)) == ListNode(0))
        XCTAssertTrue(MergeTwoSortedLists().mergeTwoLists(ListNode(2), ListNode(1)) == ListNode(1, ListNode(2)))
    }
    
    func test_23_MergeKSortedLists() throws {
        XCTAssertTrue(MergeKSortedLists().mergeKLists([ListNode(1, ListNode(4, ListNode(5))),
                                                       ListNode(1, ListNode(3, ListNode(4))),
                                                       ListNode(2, ListNode(6))]) == ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4, ListNode(5, ListNode(6)))))))))
        XCTAssertTrue(MergeKSortedLists().mergeKLists([]) == nil)
    }
    
    func test_28_ImplementstrStr() throws {
        XCTAssertTrue(ImplementstrStr().strStr("hello", "ll") == 2)
        XCTAssertTrue(ImplementstrStr().strStr("aaaaa", "bba") == -1)
        XCTAssertTrue(ImplementstrStr().strStr("", "") == 0)
        XCTAssertTrue(ImplementstrStr().strStr("hel", "ll") == -1)
        XCTAssertTrue(ImplementstrStr().strStr("a", "") == 0)
    }
    
    func test_29_DivideTwoIntegers() throws {
        XCTAssertTrue(DivideTwoIntegers().divide(10, 3) == 3)
        XCTAssertTrue(DivideTwoIntegers().divide(7, -3) == -2)
        XCTAssertTrue(DivideTwoIntegers().divide(0, 1) == 0)
        XCTAssertTrue(DivideTwoIntegers().divide(1, 1) == 1)
    }
    
    func test_31_NextPermutation() throws {
        var arr1 = [1,2,3]
        NextPermutation().nextPermutation(&arr1)
        XCTAssertTrue(arr1 == [1,3,2])
        
        var arr2 = [3,2,1]
        NextPermutation().nextPermutation(&arr2)
        XCTAssertTrue(arr2 == [1,2,3])
        
        var arr3 = [1,1,5]
        NextPermutation().nextPermutation(&arr3)
        XCTAssertTrue(arr3 == [1,5,1])
        
        var arr4 = [1]
        NextPermutation().nextPermutation(&arr4)
        XCTAssertTrue(arr4 == [1])
    }
    
    func test_71_SimplifyPath() throws {
        XCTAssertTrue(SimplifyPath().simplifyPath("/home/") == "/home")
        XCTAssertTrue(SimplifyPath().simplifyPath("/../") == "/")
        XCTAssertTrue(SimplifyPath().simplifyPath("/home//foo/") == "/home/foo")
        XCTAssertTrue(SimplifyPath().simplifyPath("/a/./b/../../c/") == "/c")
    }
    
    func test_82_RemoveDuplicatesfromSortedListII() throws {
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(ListNode(1, ListNode(2, ListNode(3, ListNode(3, ListNode(4, ListNode(4, ListNode(5)))))))) == ListNode(1, ListNode(2, ListNode(5))))
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(ListNode(1, ListNode(1, ListNode(1, ListNode(2, ListNode(3)))))) == ListNode(2, ListNode(3)))
        XCTAssertTrue(RemoveDuplicatesfromSortedListII().deleteDuplicates(ListNode(1, ListNode(1, ListNode(1)))) == nil)
    }
    
    func test_83_RemoveDuplicatesfromSortedList() throws {
        XCTAssertTrue(RemoveDuplicatesfromSortedList().deleteDuplicates(ListNode(1, ListNode(1, ListNode(2)))) == ListNode(1, ListNode(2)))
        XCTAssertTrue(RemoveDuplicatesfromSortedList().deleteDuplicates(ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))) == ListNode(1, ListNode(2, ListNode(3))))
        XCTAssertTrue(RemoveDuplicatesfromSortedList().deleteDuplicates(ListNode(1, ListNode(1, ListNode(1)))) == ListNode(1))
    }
    
    func test_88_MergeSortedArray() throws {
        var array1 = [1,2,3,0,0,0]
        MergeSortedArray().merge(&array1, 3, [2,5,6], 3)
        XCTAssertTrue(array1 == [1,2,2,3,5,6])
        
        var array2 = [1]
        MergeSortedArray().merge(&array2, 1, [], 0)
        XCTAssertTrue(array2 == [1])
    }
    
    func test_119_PascalsTriangleII() throws {
        let obj = PascalsTriangleII()
        XCTAssertTrue(obj.getRow(2) == [1,2,1])
        XCTAssertTrue(obj.getRow(3) == [1,3,3,1])
        XCTAssertTrue(obj.getRow(4) == [1,4,6,4,1])
        XCTAssertTrue(obj.getRow(5) == [1,5,10,10,5,1])
    }
    
    func test_125_ValidPalindrome() throws {
        let obj = ValidPalindrome()
        XCTAssertTrue(obj.isPalindrome("A man, a plan, a canal: Panama"))
        XCTAssertFalse(obj.isPalindrome("race a car"))
    }
    
    func test_127_WordLadder() throws {
        XCTAssertTrue(WordLadder().ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]) == 5)
        XCTAssertTrue(WordLadder().ladderLength("hit", "cog", ["hot","dot","dog","lot","log"]) == 0)
    }
    
    func test_130_SurroundedRegions() throws {
        var regions1: [[Character]] = [["X", "X", "X", "X"],
                                       ["X", "0", "0", "X"],
                                       ["X", "X", "0", "X"],
                                       ["X", "0", "X", "X"]]
        let surroundedRegions1: [[Character]] = [["X", "X", "X", "X"],
                                                 ["X", "X", "X", "X"],
                                                 ["X", "X", "X", "X"],
                                                 ["X", "0", "X", "X"]]
        SurroundedRegions().solve(&regions1)
        XCTAssertTrue(regions1 == surroundedRegions1)
        
        var regions: [[Character]] = [["O","X","X","O","X"],
                                      ["X","O","O","X","O"],
                                      ["X","O","X","O","X"],
                                      ["O","X","O","O","O"],
                                      ["X","X","O","X","O"]]
        let surroundedRegions: [[Character]] = [["O","X","X","O","X"],
                                                ["X","X","X","X","O"],
                                                ["X","X","X","O","X"],
                                                ["O","X","O","O","O"],
                                                ["X","X","O","X","O"]]
        SurroundedRegions().solve(&regions)
        XCTAssertTrue(regions == surroundedRegions)
    }
    
    func test_134_GasStation() throws {
        let obj = GasStation()
        XCTAssertTrue(obj.canCompleteCircuit([1,2,3,4,5], [3,4,5,1,2]) == 3)
        XCTAssertTrue(obj.canCompleteCircuit([2,3,4], [3,4,3]) == -1)
    }
    
    func test_138_CopyListWithRandomPointer() throws {
        XCTAssertTrue(CopyListWithRandomPointer().copyRandomList(nil) == nil)
        
        let node1_1 = Node(3)
        let node1_2 = Node(3)
        let node1_3 = Node(3)
        node1_1.next = node1_2
        node1_2.next = node1_3
        node1_2.random = node1_1
        
        //XCTAssertTrue(CopyListWithRandomPointer().copyRandomList(node1_1) == nil)
        
        let node2_1 = Node(7)
        let node2_2 = Node(13)
        let node2_3 = Node(11)
        let node2_4 = Node(10)
        let node2_5 = Node(1)
        
        node2_1.next = node2_2
        node2_2.next = node2_3
        node2_2.random = node2_1
        node2_3.next = node2_4
        node2_3.random = node2_5
        node2_4.next = node2_5
        node2_4.random = node2_3
        node2_5.random = node2_1
        XCTAssertTrue(CopyListWithRandomPointer().copyRandomList(node2_1) == nil)
    }
    
    func test_141_LinkedListCycle() throws {
        let node4 = ListNode(-4)
        let node1 = ListNode(1, node4)
        let node2 = ListNode(2, node1)
        let node3 = ListNode(3, node2)
        node4.next = node2
        XCTAssertTrue(LinkedListCycle().hasCycle(node3))
        
        let node2_1 = ListNode(2)
        let node1_1 = ListNode(1, node2_1)
        node2_1.next = node1_1
        XCTAssertTrue(LinkedListCycle().hasCycle(node1_1))
        
        XCTAssertFalse(LinkedListCycle().hasCycle(ListNode(1)))
        XCTAssertFalse(LinkedListCycle().hasCycle(ListNode(1, ListNode(2))))
    }
    
    func test_142_LinkedListCycleII() throws {
        let node4 = ListNode(-4)
        let node1 = ListNode(1, node4)
        let node2 = ListNode(2, node1)
        let node3 = ListNode(3, node2)
        node4.next = node2
        XCTAssertTrue(LinkedListCycleII().detectCycle(node3) == node2)
        
        let node2_1 = ListNode(2)
        let node1_1 = ListNode(1, node2_1)
        node2_1.next = node1_1
        XCTAssertTrue(LinkedListCycleII().detectCycle(node1_1) == node1_1)
        XCTAssertTrue(LinkedListCycleII().detectCycle(ListNode(1)) == nil)
        XCTAssertTrue(LinkedListCycleII().detectCycle(ListNode(1, ListNode(2))) == nil)
    }
    
    func test_152_MaximumProductSubarray() throws {
        let obj = MaximumProductSubarray()
        XCTAssertTrue(obj.maxProduct([2,3,-2,4]) == 6)
        XCTAssertTrue(obj.maxProduct([-2,0,-1]) == 0)
    }
    
    func test_157_SolutionReader() throws {
        var obj = SolutionReader("abc")
        var buffer = [Character]()
        XCTAssertTrue(obj.read(&buffer, 4) == 3)
        XCTAssertTrue(buffer == ["a", "b", "c"])
        
        obj = SolutionReader("abcde")
        var buffer1 = [Character]()
        XCTAssertTrue(obj.read(&buffer1, 5) == 5)
        XCTAssertTrue(buffer1 == ["a", "b", "c", "d", "e"])
        
        obj = SolutionReader("abcdABCD1234")
        var buffer2 = [Character]()
        XCTAssertTrue(obj.read(&buffer2, 12) == 12)
    }
    
    func test_161_OneEditDistance() throws {
        XCTAssertFalse(OneEditDistance().isOneEditDistance("c", "c"))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("ab", "acb"))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("acb", "ab"))
        XCTAssertFalse(OneEditDistance().isOneEditDistance("", ""))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("a", ""))
        XCTAssertTrue(OneEditDistance().isOneEditDistance("", "A"))
    }
    
    func test_165_CompareVersionNumbers() throws {
        let obj = CompareVersionNumbers()
        XCTAssertTrue(obj.compareVersion("0.1", "1.1") == -1)
        XCTAssertTrue(obj.compareVersion("1.0.1", "1") == 1)
        XCTAssertTrue(obj.compareVersion("7.5.2.4", "7.5.3") == -1)
        XCTAssertTrue(obj.compareVersion("1.01", "1.001") == 0)
        XCTAssertTrue(obj.compareVersion("1.0", "1.0.0") == 0)
    }
    
    func test_171_ExcelSheetColumnNumber() throws {
        let obj = ExcelSheetColumnNumber()
        XCTAssertTrue(obj.titleToNumber("A") == 1)
        XCTAssertTrue(obj.titleToNumber("Z") == 26)
        XCTAssertTrue(obj.titleToNumber("AA") == 27)
        XCTAssertTrue(obj.titleToNumber("AB") == 28)
        XCTAssertTrue(obj.titleToNumber("ZY") == 701)
    }
    
    func test_179_LargestNumber() throws {
        let obj = LargestNumber()
        XCTAssertTrue(obj.largestNumber([10,2]) == "210")
        XCTAssertTrue(obj.largestNumber([3,30,34,5,9]) == "9534330")
    }
    
    func test_191_NumberOf1Bits() throws {
        XCTAssertTrue(NumberOf1Bits().hammingWeight(11) == 3)
        XCTAssertTrue(NumberOf1Bits().hammingWeight(128) == 1)
        XCTAssertTrue(NumberOf1Bits().hammingWeight(4294967293) == 31)
    }
    
    func test_199_BinaryTreeRightSideView() throws {
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(TreeNode(1, left: TreeNode(2, right: TreeNode(5)), right: TreeNode(3, right: TreeNode(4)))) == [1,3,4])
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(TreeNode(1)) == [1])
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(TreeNode(1, left: TreeNode(2, left: TreeNode(3)), right: TreeNode(4, left: TreeNode(5)))) == [1, 4, 5])
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(nil) == [])
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(TreeNode(1, left: TreeNode(2))) == [1,2])
        XCTAssertTrue(BinaryTreeRightSideView().rightSideView(TreeNode(1, left: TreeNode(2, left: TreeNode(4)), right: TreeNode(3))) == [1,3,4])
    }
    
    func test_211_WordDictionary() throws {
        let obj = WordDictionary()
        obj.addWord("bad")
        obj.addWord("dad")
        obj.addWord("mad")
        XCTAssertFalse(obj.search("pad")) // false
        XCTAssertTrue(obj.search("bad")) // true
        XCTAssertTrue(obj.search(".ad")) // true
        XCTAssertTrue(obj.search("b..")) // true
    }
    
    func test_220_ContainsDuplicateIII() throws {
        let obj = ContainsDuplicateIII()
        XCTAssertTrue(obj.containsNearbyAlmostDuplicate([1,2,3,1], 3, 0))
        XCTAssertTrue(obj.containsNearbyAlmostDuplicate([1,0,1,1], 1, 2))
        XCTAssertFalse(obj.containsNearbyAlmostDuplicate([1,5,9,1,5,9], 2, 3))
    }
    
    func test_229_MajorityElementII() throws {
        let obj = MajorityElementII()
        XCTAssertTrue(obj.majorityElement([3,2,3]).sorted() == [3])
        XCTAssertTrue(obj.majorityElement([1,1,1,3,3,2,2,2]).sorted() == [1,2])
    }
    
    func test_240_SearchA2DMatrixII() throws {
        XCTAssertTrue(SearchA2DMatrixII().searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 5))
        XCTAssertFalse(SearchA2DMatrixII().searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 20))
    }
    
    func test_242_ValidAnagram() throws {
        XCTAssertTrue(ValidAnagram().isAnagram("anagram", "nagaram"))
        XCTAssertFalse(ValidAnagram().isAnagram("rat", "car"))
        XCTAssertFalse(ValidAnagram().isAnagram("aa", "a"))
    }
    
    func test_266_PalindromePermutation() throws {
        let obj1 = PalindromePermutation()
        XCTAssertFalse(obj1.canPermutePalindrome("code"))
        XCTAssertTrue(obj1.canPermutePalindrome("aab"))
        XCTAssertTrue(obj1.canPermutePalindrome("carerac"))
    }
    
    func test_274_HIndex() throws {
        XCTAssertTrue(HIndex().hIndex([3,0,6,1,5]) == 3)
        XCTAssertTrue(HIndex().hIndex([100]) == 1)
        XCTAssertTrue(HIndex().hIndex([15,11]) == 2)
        XCTAssertTrue(HIndex().hIndex([0]) == 0)
        XCTAssertTrue(HIndex().hIndex([1, 0]) == 1)
    }
    
    func test_275_HIndexII() throws {
        XCTAssertTrue(HIndexII().hIndex([0,1,3,5,6]) == 3)
        XCTAssertTrue(HIndexII().hIndex([100]) == 1)
        XCTAssertTrue(HIndexII().hIndex([11,15]) == 2)
        XCTAssertTrue(HIndexII().hIndex([0]) == 0)
        XCTAssertTrue(HIndexII().hIndex([0, 1]) == 1)
    }
    
    func test_277_FindTheCelebrity() throws {
        XCTAssertTrue(FindTheCelebrity().findCelebrity(2) == 1)
        XCTAssertTrue(FindTheCelebrity().findCelebrity(2) == -1)
    }
    
    func test_284_PeekingIterator() throws {
        let obj = PeekingIterator([1,2,3].makeIterator())
        XCTAssertTrue(obj.next() == 1)
        XCTAssertTrue(obj.peek() == 2)
        XCTAssertTrue(obj.next() == 2)
        XCTAssertTrue(obj.next() == 3)
        XCTAssertFalse(obj.hasNext())
        
        let obj1 = PeekingIterator([1,2,3,4].makeIterator())
        XCTAssertTrue(obj1.hasNext())
        XCTAssertTrue(obj1.peek() == 1)
        XCTAssertTrue(obj1.peek() == 1)
        XCTAssertTrue(obj1.next() == 1)
        XCTAssertTrue(obj1.next() == 2)
        XCTAssertTrue(obj1.peek() == 3)
        XCTAssertTrue(obj1.peek() == 3)
        XCTAssertTrue(obj1.next() == 3)
        XCTAssertTrue(obj1.hasNext())
        XCTAssertTrue(obj1.peek() == 4)
        XCTAssertTrue(obj1.hasNext())
        XCTAssertTrue(obj1.next() == 4)
        XCTAssertFalse(obj1.hasNext())
    }
    
    func test_287_FindTheDuplicateNumber() throws {
        XCTAssertTrue(FindTheDuplicateNumber().findDuplicate([1,3,4,2,2]) == 2)
        XCTAssertTrue(FindTheDuplicateNumber().findDuplicate([3,1,3,4,2]) == 3)
        XCTAssertTrue(FindTheDuplicateNumber().findDuplicate([1,1]) == 1)
        XCTAssertTrue(FindTheDuplicateNumber().findDuplicate([1,1,2]) == 1)
    }
    
    func test_290_WordPattern() throws {
        let obj = WordPattern()
        XCTAssertTrue(obj.wordPattern("abba", "dog cat cat dog"))
        XCTAssertFalse(obj.wordPattern("abba", "dog cat cat fish"))
        XCTAssertFalse(obj.wordPattern("aaaa", "dog cat cat dog"))
        XCTAssertFalse(obj.wordPattern("abba", "dog dog dog dog"))
    }
    
    func test_299_BullsAndCows() throws {
        let obj = BullsAndCows()
        XCTAssertTrue(obj.getHint("1807", "7810") == "1A3B")
        XCTAssertTrue(obj.getHint("1123", "0111") == "1A1B")
        XCTAssertTrue(obj.getHint("1234", "0111") == "0A1B")
        XCTAssertTrue(obj.getHint("1122", "2211") == "0A4B")
    }
    
    func test_342_PowerofFour() throws {
        let obj = PowerofFour()
        XCTAssertTrue(obj.isPowerOfFour(16))
        XCTAssertFalse(obj.isPowerOfFour(5))
        
        let obj1 = PowerofFour()
        XCTAssertTrue(obj1.isPowerOfFourUsingLog(16))
        XCTAssertFalse(obj1.isPowerOfFourUsingLog(5))
    }
    
    func test_346_MovingAverage() throws {
        let obj = MovingAverage(3)
        XCTAssertTrue(obj.next(1) == 1)
        XCTAssertTrue(obj.next(10).isEqual(to: 5.5))
        XCTAssertTrue(obj.next(3).isEqual(to: 4.666666666666667))
        XCTAssertTrue(obj.next(5).isEqual(to: 6))
        
        let obj1 = MovingAverage(1)
        XCTAssertTrue(obj1.next(4) == 4)
        XCTAssertTrue(obj1.next(0).isEqual(to: 0))
    }
    
    func test_359_Logger() throws {
        let logger = Logger()
        XCTAssertTrue(logger.shouldPrintMessage(1, "foo")) // true
        XCTAssertTrue(logger.shouldPrintMessage(2, "bar")) // true
        XCTAssertFalse(logger.shouldPrintMessage(3, "foo")) // false
        XCTAssertFalse(logger.shouldPrintMessage(8, "bar")) // false
        XCTAssertFalse(logger.shouldPrintMessage(10, "foo")) // false
        XCTAssertTrue(logger.shouldPrintMessage(11, "foo")) // true
    }
    
    func test_368_LargestDivisibleSubset() throws {
        XCTAssertTrue(LargestDivisibleSubset().largestDivisibleSubset([1,2,4,8]) == [1,2,4,8])
        let largestDivisibleSubset = LargestDivisibleSubset().largestDivisibleSubset([1,2,3])
        XCTAssertTrue(largestDivisibleSubset == [1,2] || largestDivisibleSubset == [1,3])
    }
    
    func test_380_RandomizedSet() throws {
        let randomSet = RandomizedSet()
        
        // Inserts 1 to the set. Returns true as 1 was inserted successfully.
        XCTAssertTrue(randomSet.insert(1))
        
        // Returns false as 2 does not exist in the set.
        XCTAssertFalse(randomSet.remove(2))
        
        // Inserts 2 to the set, returns true. Set now contains [1,2].
        XCTAssertTrue(randomSet.insert(2))
        
        // getRandom should return either 1 or 2 randomly.
        
        XCTAssertTrue([1,2].contains(randomSet.getRandom()))
        
        // Removes 1 from the set, returns true. Set now contains [2].
        XCTAssertTrue(randomSet.remove(1))
        
        // 2 was already in the set, so return false.
        XCTAssertFalse(randomSet.insert(2))
        
        // Since 2 is the only number in the set, getRandom always return 2.
        XCTAssertTrue(randomSet.getRandom() == 2)
        
        let randomSet1 = RandomizedSet()
        
        // Returns false as 0 does not exist in the set.
        XCTAssertFalse(randomSet1.remove(0))
        
        // Returns false as 0 does not exist in the set.
        XCTAssertFalse(randomSet1.remove(0))
        
        // Inserts 0 to the set. Returns true as 0 was inserted successfully.
        XCTAssertTrue(randomSet1.insert(0))
        
        // getRandom should return 0 randomly.
        XCTAssertTrue(randomSet1.getRandom() == 0)
        
        // Returns true as 0 exists in the set.
        XCTAssertTrue(randomSet1.remove(0))
        
        // Inserts 0 to the set. Returns true as 0 was inserted successfully.
        XCTAssertTrue(randomSet1.insert(0))
    }
    
    func test_389_FindTheDifference() throws {
        let obj = FindTheDifference()
        XCTAssertTrue(obj.findTheDifference("abcd", "abcde") == "e")
        XCTAssertTrue(obj.findTheDifference("a", "aa") == "a")
        XCTAssertTrue(obj.findTheDifference("ymbgaraibkfmvocpizdydugvalagaivdbfsfbepeyccqfepzvtpyxtbadkhmwmoswrcxnargtlswqemafandgkmydtimuzvjwxvlfwlhvkrgcsithaqlcvrihrwqkpjdhgfgreqoxzfvhjzojhghfwbvpfzectwwhexthbsndovxejsntmjihchaotbgcysfdaojkjldprwyrnischrgmtvjcorypvopfmegizfkvudubnejzfqffvgdoxohuinkyygbdzmshvyqyhsozwvlhevfepdvafgkqpkmcsikfyxczcovrmwqxxbnhfzcjjcpgzjjfateajnnvlbwhyppdleahgaypxidkpwmfqwqyofwdqgxhjaxvyrzupfwesmxbjszolgwqvfiozofncbohduqgiswuiyddmwlwubetyaummenkdfptjczxemryuotrrymrfdxtrebpbjtpnuhsbnovhectpjhfhahbqrfbyxggobsweefcwxpqsspyssrmdhuelkkvyjxswjwofngpwfxvknkjviiavorwyfzlnktmfwxkvwkrwdcxjfzikdyswsuxegmhtnxjraqrdchaauazfhtklxsksbhwgjphgbasfnlwqwukprgvihntsyymdrfovaszjywuqygpvjtvlsvvqbvzsmgweiayhlubnbsitvfxawhfmfiatxvqrcwjshvovxknnxnyyfexqycrlyksderlqarqhkxyaqwlwoqcribumrqjtelhwdvaiysgjlvksrfvjlcaiwrirtkkxbwgicyhvakxgdjwnwmubkiazdjkfmotglclqndqjxethoutvjchjbkoasnnfbgrnycucfpeovruguzumgmgddqwjgdvaujhyqsqtoexmnfuluaqbxoofvotvfoiexbnprrxptchmlctzgqtkivsilwgwgvpidpvasurraqfkcmxhdapjrlrnkbklwkrvoaziznlpor",
        "qhxepbshlrhoecdaodgpousbzfcqjxulatciapuftffahhlmxbufgjuxstfjvljybfxnenlacmjqoymvamphpxnolwijwcecgwbcjhgdybfffwoygikvoecdggplfohemfypxfsvdrseyhmvkoovxhdvoavsqqbrsqrkqhbtmgwaurgisloqjixfwfvwtszcxwktkwesaxsmhsvlitegrlzkvfqoiiwxbzskzoewbkxtphapavbyvhzvgrrfriddnsrftfowhdanvhjvurhljmpxvpddxmzfgwwpkjrfgqptrmumoemhfpojnxzwlrxkcafvbhlwrapubhveattfifsmiounhqusvhywnxhwrgamgnesxmzliyzisqrwvkiyderyotxhwspqrrkeczjysfujvovsfcfouykcqyjoobfdgnlswfzjmyucaxuaslzwfnetekymrwbvponiaojdqnbmboldvvitamntwnyaeppjaohwkrisrlrgwcjqqgxeqerjrbapfzurcwxhcwzugcgnirkkrxdthtbmdqgvqxilllrsbwjhwqszrjtzyetwubdrlyakzxcveufvhqugyawvkivwonvmrgnchkzdysngqdibhkyboyftxcvvjoggecjsajbuqkjjxfvynrjsnvtfvgpgveycxidhhfauvjovmnbqgoxsafknluyimkczykwdgvqwlvvgdmufxdypwnajkncoynqticfetcdafvtqszuwfmrdggifokwmkgzuxnhncmnsstffqpqbplypapctctfhqpihavligbrutxmmygiyaklqtakdidvnvrjfteazeqmbgklrgrorudayokxptswwkcircwuhcavhdparjfkjypkyxhbgwxbkvpvrtzjaetahmxevmkhdfyidhrdeejapfbafwmdqjqszwnwzgclitdhlnkaiyldwkwwzvhyorgbysyjbxsspnjdewjxbhpsvj") == "t")
    }
    
    func test_409_LongestPalindrome() throws {
        let obj = LongestPalindrome()
        XCTAssertTrue(obj.longestPalindrome("abccccdd") == 7)
        XCTAssertTrue(obj.longestPalindrome("a") == 1)
        XCTAssertTrue(obj.longestPalindrome("") == 0)
        XCTAssertTrue(obj.longestPalindrome("aA") == 1)
        XCTAssertTrue(obj.longestPalindrome("ccc") == 3)
        XCTAssertTrue(obj.longestPalindrome("bananas") == 5)
        XCTAssertTrue(obj.longestPalindrome("AB") == 1)
    }
    
    func test_413_ArithmeticSlices() throws {
        XCTAssertTrue(ArithmeticSlices().numberOfArithmeticSlices([1,2,3,4,5,6]) == 10)
        XCTAssertTrue(ArithmeticSlices().numberOfArithmeticSlices([1, 2, 3]) == 1)
        XCTAssertTrue(ArithmeticSlices().numberOfArithmeticSlices([1, 2, 3, 4]) == 3)
        XCTAssertTrue(ArithmeticSlices().numberOfArithmeticSlices([1, 3, 5, 7, 9]) == 6)
    }
    
    func test_442_FindAllDuplicatesInAnArray() throws {
        XCTAssertTrue(FindAllDuplicatesInAnArray().findDuplicates([4,3,2,7,8,2,3,1]) == [2,3])
    }
    
    func test_459_RepeatedSubstringPattern() throws {
        let obj = RepeatedSubstringPattern()
        XCTAssertTrue(obj.repeatedSubstringPattern("abab"))
        XCTAssertFalse(obj.repeatedSubstringPattern("aba"))
        XCTAssertTrue(obj.repeatedSubstringPattern("abcabcabcabc"))
    }
    
    func test_468_ValidateIPAddress() throws {
        XCTAssertTrue(ValidateIPAddress().validIPAddress("172.16.254.1") == "IPv4")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("192.0.0.1") == "IPv4")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("172.00.254.1") == "Neither")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("15.16.-0.1") == "Neither")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("2001:0db8:85a3:0:0:8A2E:0370:7334") == "IPv6")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("2001:0db8:85a3:::8A2E:0370:7334") == "Neither")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("256.256.256.256") == "Neither")
        XCTAssertTrue(ValidateIPAddress().validIPAddress("256.ABC.256.256") == "Neither")
    }
    
    func test_484_FindPermutation() throws {
        let obj = FindPermutation()
        XCTAssertTrue(obj.findPermutation("I") == [1,2])
        XCTAssertTrue(obj.findPermutation("DI") == [2,1,3])
        XCTAssertTrue(obj.findPermutation("DIDIDIII") == [2,1,4,3,6,5,7,8])
    }
    
    func test_492_Rectangle() throws {
        let obj = Rectangle()
        XCTAssertTrue(obj.constructRectangle(4) == [2,2])
        XCTAssertTrue(obj.constructRectangle(2) == [2,1])
        XCTAssertTrue(obj.constructRectangle(6) == [3,2])
        XCTAssertTrue(obj.constructRectangle(16) == [4,4])
    }
    
    func test_496_TeemoAttacking() throws {
        let obj = TeemoAttacking()
        XCTAssertTrue(obj.findPoisonedDuration([1,4], 2) == 4)
        XCTAssertTrue(obj.findPoisonedDuration([1,2], 2) == 3)
    }
    
    func test_520_DetectCapital() throws {
        let obj = DetectCapital()
        XCTAssertTrue(obj.detectCapitalUse("USA"))
        XCTAssertTrue(obj.detectCapitalUse("Google"))
        XCTAssertTrue(obj.detectCapitalUse("leetcode"))
        XCTAssertFalse(obj.detectCapitalUse("FlaG"))
    }
    
    func test_524_LongestWordInDictionaryThroughDeleting() throws {
        XCTAssertTrue(LongestWordInDictionaryThroughDeleting().findLongestWord("abpcplea", ["ale","apple","monkey","plea"]) == "apple")
        XCTAssertTrue(LongestWordInDictionaryThroughDeleting().findLongestWord("abpcplea", ["a","b","c"]) == "a")
    }
    
    func test_526_BeautifulArrangementExample() throws {
        let obj1 = BeautifulArrangement()
        XCTAssertTrue(obj1.countArrangement(2) == 2)
        XCTAssertTrue(obj1.countArrangement(1) == 1)
    }
    
    func test_538_ConvertBSTToGreaterTree() throws {
        XCTAssertTrue(ConvertBSTToGreaterTree().convertBST(TreeNode(4,
                                                                    left: TreeNode(1,
                                                                                   left: TreeNode(0),
                                                                                   right: TreeNode(2, right: TreeNode(3))),
                                                                    right: TreeNode(6,
                                                                                    left: TreeNode(5),
                                                                                    right: TreeNode(7, right: TreeNode(8))))) ==
                                                           TreeNode(30, left: TreeNode(36,
                                                                                    left: TreeNode(36),
                                                                                    right: TreeNode(35, right: TreeNode(33))),
                                                                        right: TreeNode(21,
                                                                                    left: TreeNode(26),
                                                                                    right: TreeNode(15, right: TreeNode(8)))))
        XCTAssertTrue(ConvertBSTToGreaterTree().convertBST(TreeNode(0, right: TreeNode(1))) == TreeNode(1, right: TreeNode(1)))
        XCTAssertTrue(ConvertBSTToGreaterTree().convertBST(TreeNode(1, left: TreeNode(0), right: TreeNode(2))) == TreeNode(3, left: TreeNode(3), right: TreeNode(2)))
        XCTAssertTrue(ConvertBSTToGreaterTree().convertBST(TreeNode(3, left: TreeNode(2, left: TreeNode(1)), right: TreeNode(4))) == TreeNode(7, left: TreeNode(9, left: TreeNode(10)), right: TreeNode(4)))
    }
    
    func test_573_SquirrelSimulation() throws {
        XCTAssertTrue(SquirrelSimulation().minDistance(5, 7, [2,2], [4,4], [[3,0], [2,5]]) == 12)
        XCTAssertTrue(SquirrelSimulation().minDistance(5, 5, [3,2], [0,1], [[2,0],[4,1],[0,4],[1,3],[1,0],[3,4],[3,0],[2,3],[0,2],[0,0],[2,2],[4,2],[3,3],[4,4],[4,0],[4,3],[3,1],[2,1],[1,4],[2,4]]) == 100)
        XCTAssertTrue(SquirrelSimulation().minDistance(9, 9, [7,2], [7,1], [[3,0],[7,7],[8,8],[0,8],[2,4],[4,5],[3,5],[4,2],[1,8]]) == 131)
    }
    
    func test_575_DistributeCandies() {
        XCTAssertTrue(DistributeCandies().distributeCandies([1,1,2,2,3,3]) == 3)
        XCTAssertTrue(DistributeCandies().distributeCandies([1,1,2,3]) == 2)
        XCTAssertTrue(DistributeCandies().distributeCandies([6,6,6,6]) == 1)
    }
    
    func test_581_ShortestUnsortedContinuousSubarray() {
        XCTAssertTrue(ShortestUnsortedContinuousSubarray().findUnsortedSubarray([2,6,4,8,10,9,15]) == 5)
        XCTAssertTrue(ShortestUnsortedContinuousSubarray().findUnsortedSubarray([1,2,3,4]) == 0)
        XCTAssertTrue(ShortestUnsortedContinuousSubarray().findUnsortedSubarray([1]) == 0)
    }
    
    func test_582_KillProcess() throws {
        XCTAssertTrue(KillProcess().killProcess([1, 3, 10, 5], [3, 0, 5, 3], 5) == [5,10])
        XCTAssertTrue(KillProcess().killProcess([1, 3, 10, 5], [3, 0, 5, 3], 3) == [3,1,5,10])
    }
    
    func test_594_LongestHarmoniousSubsequence() throws {
        XCTAssertTrue(LongestHarmoniousSubsequence().findLHS([1,3,2,2,5,2,3,7]) == 5)
        XCTAssertTrue(LongestHarmoniousSubsequence().findLHS([1,2,3,4]) == 2)
        XCTAssertTrue(LongestHarmoniousSubsequence().findLHS([1,1,1,1]) == 0)
    }
    
    func test_605_CanPlaceFlowers() throws {
        XCTAssertTrue(CanPlaceFlowers().canPlaceFlowers([1,0,0,0,1], 1))
        XCTAssertFalse(CanPlaceFlowers().canPlaceFlowers([1,0,0,0,1], 2))
    }
    
    func test_624_MaximumDistanceInArrays() throws {
        let obj = MaximumDistanceInArrays()
        XCTAssertTrue(obj.maxDistance([[1,4],[0,5]]) == 4)
        XCTAssertTrue(obj.maxDistance([[1,4,5],[0,2]]) == 5)
    }
    
    func test_634_FindTheDerangementOfAnArray() throws {
        XCTAssertTrue(FindTheDerangementOfAnArray().findDerangement(3) == 2)
        XCTAssertTrue(FindTheDerangementOfAnArray().findDerangement(4) == 9)
    }
    
    func test_645_SetMismatch() throws {
        XCTAssertTrue(SetMismatch().findErrorNums([1,2,2,4]) == [2,3])
        XCTAssertTrue(SetMismatch().findErrorNums([1,1]) == [1,2])
    }
    
    func test_669_TrimABinarySearchTree() throws {
        XCTAssertTrue(TrimABinarySearchTree().trimBST(TreeNode(1, left: TreeNode(0), right: TreeNode(2)), 1, 2) == TreeNode(1, right: TreeNode(2)))
        XCTAssertTrue(TrimABinarySearchTree().trimBST(TreeNode(3, left: TreeNode(0, right: TreeNode(2, left: TreeNode(1))), right: TreeNode(4)), 1, 3) == TreeNode(3, left: TreeNode(2, left: TreeNode(1))))
        XCTAssertTrue(TrimABinarySearchTree().trimBST(TreeNode(1), 1, 2) == TreeNode(1))
        XCTAssertTrue(TrimABinarySearchTree().trimBST(TreeNode(1, right: TreeNode(2)), 1, 3) == TreeNode(1, right: TreeNode(2)))
        XCTAssertTrue(TrimABinarySearchTree().trimBST(TreeNode(1, right: TreeNode(2)), 2, 4) == TreeNode(2))
    }
    
    func test_694_NumberOfDistinctIslands() throws {
        XCTAssertTrue(NumberOfDistinctIslands().numDistinctIslands([[1,1,0,0,0],
                                                                    [1,1,0,0,0],
                                                                    [0,0,0,1,1],
                                                                    [0,0,0,1,1]]) == 1)
        XCTAssertTrue(NumberOfDistinctIslands().numDistinctIslands([[1,1,0,1,1],
                                                                    [1,0,0,0,0],
                                                                    [0,0,0,0,1],
                                                                    [1,1,0,1,1]]) == 3)
    }
    
    func test_700_BinarySearchTree() throws {
        let root = TreeNode(4, left: TreeNode(2, left: TreeNode(1), right: TreeNode(3)), right: TreeNode(7))
        XCTAssertTrue(BinarySearchTree().areEqual(BinarySearchTree().searchBST(root, 2),
                                                  TreeNode(2, left: TreeNode(1), right: TreeNode(3))))
        let root1 = TreeNode(4, left: TreeNode(2, left: TreeNode(1), right: TreeNode(3)), right: TreeNode(7))
        XCTAssertTrue(BinarySearchTree().searchBST(root1, 6) == nil)
    }
    
    func test_708_InsertIntoASortedCircularLinkedList() {
        let obj = InsertIntoASortedCircularLinkedList()
        let headNode = Node(3)
        let node2 = Node(3)
        headNode.next = node2
        let node3 = Node(3)
        node2.next = node3
        node3.next = headNode
        _ = obj.insert(headNode, 0)
    }
    
    func test_750_NumberOfCornerRectangles() throws {
        XCTAssertTrue(NumberOfCornerRectangles().countCornerRectangles([[1, 0, 0, 1, 0],
                                                                        [0, 0, 1, 0, 1],
                                                                        [0, 0, 0, 1, 0],
                                                                        [1, 0, 1, 0, 1]]) == 1)
        XCTAssertTrue(NumberOfCornerRectangles().countCornerRectangles([[1, 1, 1],
                                                                        [1, 1, 1],
                                                                        [1, 1, 1]]) == 9)
        XCTAssertTrue(NumberOfCornerRectangles().countCornerRectangles([[1, 1, 1, 1]]) == 0)
    }
    
    func test_760_FindAnagramMappings() throws {
        XCTAssertTrue(FindAnagramMappings().anagramMappings([12, 28, 46, 32, 50], [50, 12, 32, 46, 28]) == [1, 4, 3, 2, 0])
    }
    
    func test_784_LetterCasePermutation() throws {
        XCTAssertTrue(LetterCasePermutation().letterCasePermutation("a1b2") == ["A1b2","a1B2","A1B2","a1b2"])
        XCTAssertTrue(LetterCasePermutation().letterCasePermutation("3z4") == ["3Z4","3z4"])
        XCTAssertTrue(LetterCasePermutation().letterCasePermutation("12345") == ["12345"])
        XCTAssertTrue(LetterCasePermutation().letterCasePermutation("0") == ["0"])
    }
    
    func test_785_IsGraphBipartite() throws {
        XCTAssertTrue(IsGraphBipartite().isBipartite([[1,3],[0,2],[1,3],[0,2]]))
        XCTAssertFalse(IsGraphBipartite().isBipartite([[1,2,3],[0,2],[0,1,3],[0,2]]))
    }
    
    func test_821_ShortestDistanceToACharacter() throws {
        XCTAssertTrue(ShortestDistanceToACharacter().shortestToChar("loveleetcode", "e") == [3,2,1,0,1,0,0,1,2,2,1,0])
        XCTAssertTrue(ShortestDistanceToACharacter().shortestToChar("aaab", "b") == [3,2,1,0])
    }
    
    func test_856_ScoreOfParentheses() throws {
        XCTAssertTrue(ScoreOfParentheses().scoreOfParentheses("()") == 1)
        XCTAssertTrue(ScoreOfParentheses().scoreOfParentheses("(())") == 2)
        XCTAssertTrue(ScoreOfParentheses().scoreOfParentheses("()()") == 2)
        XCTAssertTrue(ScoreOfParentheses().scoreOfParentheses("(()(()))") == 6)
    }
    
    func test_881_BoatsToSavePeople() throws {
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([1,2], 3) == 1)
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([3,2,2,1], 3) == 3)
        XCTAssertTrue(BoatsToSavePeople().numRescueBoats([3,5,3,4], 5) == 4)
    }
    
    func test_895_FreqStack() throws {
        let obj1 = FreqStack()
        obj1.push(5)
        obj1.push(7)
        obj1.push(5)
        obj1.push(7)
        obj1.push(4)
        obj1.push(5)
        XCTAssertTrue(obj1.pop() == 5)
        XCTAssertTrue(obj1.pop() == 7)
        XCTAssertTrue(obj1.pop() == 5)
        XCTAssertTrue(obj1.pop() == 4)
    }
    
    func test_946_ValidateStackSequences() {
        XCTAssertTrue(ValidateStackSequences().validateStackSequences([1,2,3,4,5], [4,5,3,2,1]))
        XCTAssertFalse(ValidateStackSequences().validateStackSequences([1,2,3,4,5], [4,3,5,1,2]))
    }
    
    func test_981_TimeMap1() throws {
        let kv = TimeMap1()
        kv.set("foo", "bar", 1)
        XCTAssertTrue(kv.get("foo", 1) == "bar")
        XCTAssertTrue(kv.get("foo", 3) == "bar")
        kv.set("foo", "bar2", 4)
        XCTAssertTrue(kv.get("foo", 4) == "bar2")
        XCTAssertTrue(kv.get("foo", 5) == "bar2")
        
        let kv1 = TimeMap1()
        kv1.set("love","high",10)
        kv1.set("love","low",20)
        XCTAssertTrue(kv1.get("love", 5) == "")
        XCTAssertTrue(kv1.get("love",10) == "high")
        XCTAssertTrue(kv1.get("love",15) == "high")
        XCTAssertTrue(kv1.get("love",20) == "low")
        XCTAssertTrue(kv1.get("love",25) == "low")
        
        let kv2 = TimeMap()
        kv2.set("foo", "bar", 1)
        XCTAssertTrue(kv2.get("foo", 1) == "bar")
        XCTAssertTrue(kv2.get("foo", 3) == "bar")
        kv2.set("foo", "bar2", 4)
        XCTAssertTrue(kv2.get("foo", 4) == "bar2")
        XCTAssertTrue(kv2.get("foo", 5) == "bar2")
        
        let kv3 = TimeMap()
        kv3.set("love","high",10)
        kv3.set("love","low",20)
        XCTAssertTrue(kv3.get("love", 5) == "")
        XCTAssertTrue(kv3.get("love",10) == "high")
        XCTAssertTrue(kv3.get("love",15) == "high")
        XCTAssertTrue(kv3.get("love",20) == "low")
        XCTAssertTrue(kv3.get("love",25) == "low")
    }
    
    func test_987_VerticalOrderTraversalOfABinaryTree() throws {
        XCTAssertTrue(VerticalOrderTraversalOfABinaryTree().verticalTraversal(TreeNode(3, left: TreeNode(9), right: TreeNode(20, left: TreeNode(15), right: TreeNode(7)))) == [[9],[3,15],[20],[7]])
        XCTAssertTrue(VerticalOrderTraversalOfABinaryTree().verticalTraversal(TreeNode(1, left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)), right: TreeNode(3, left: TreeNode(6), right: TreeNode(7)))) == [[4],[2],[1,5,6],[3],[7]])
        XCTAssertTrue(VerticalOrderTraversalOfABinaryTree().verticalTraversal(TreeNode(1, left: TreeNode(2, left: TreeNode(4), right: TreeNode(6)), right: TreeNode(3, left: TreeNode(5), right: TreeNode(7)))) == [[4],[2],[1,5,6],[3],[7]])
        XCTAssertTrue(VerticalOrderTraversalOfABinaryTree().verticalTraversal(TreeNode(3, left: TreeNode(1, left: TreeNode(0), right: TreeNode(2)), right: TreeNode(4, left: TreeNode(2)))) == [[0],[1],[3,2,2],[4]])
    }
    
    func test_991_BrokenCalculator() throws {
        XCTAssertTrue(BrokenCalculator().brokenCalc(2, 3) == 2)
        XCTAssertTrue(BrokenCalculator().brokenCalc(5, 8) == 2)
        XCTAssertTrue(BrokenCalculator().brokenCalc(3, 10) == 3)
        XCTAssertTrue(BrokenCalculator().brokenCalc(1024, 1) == 1023)
    }
    
    func test_1022_SumOfRootToLeafBinaryNumbers() throws {
        let obj = SumOfRootToLeafBinaryNumbers()
        let root = TreeNode(1, left: TreeNode(0, left: TreeNode(0), right: TreeNode(1)), right: TreeNode(1, left: TreeNode(0), right: TreeNode(1)))
        XCTAssertTrue(obj.sumRootToLeaf(root) == 22)
    }
    
    func test_1086_HighFive() throws {
        XCTAssertTrue(HighFive().highFive([[1,91],[1,92],[2,93],[2,97],[1,60],[2,77],[1,65],[1,87],[1,100],[2,100],[2,76]]) == [[1,87],[2,88]])
        XCTAssertTrue(HighFive().highFive([[1,100],[7,100],[1,100],[7,100],[1,100],[7,100],[1,100],[7,100],[1,100],[7,100]]) == [[1,100],[7,100]])
    }
    
    func test_1091_ShortestPathInBinaryMatrix() throws {
        XCTAssertTrue(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix([[0,1],[1,0]]) == 2)
        XCTAssertTrue(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix([[0,0,0],[1,1,0],[1,1,0]]) == 4)
        XCTAssertTrue(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix([[0,0,1,0,0,0,0],[0,1,0,0,0,0,1],[0,0,1,0,1,0,0],[0,0,0,1,1,1,0],[1,0,0,1,1,0,0],[1,1,1,1,1,0,1],[0,0,1,0,0,0,0]]) == 10)
    }
    
    func test_1094_CarPooling() throws {
        let obj = CarPooling()
        XCTAssertFalse(obj.carPooling([[2,1,5],[3,3,7]], 4))
        XCTAssertTrue(obj.carPooling([[2,1,5],[3,3,7]], 5))
        XCTAssertTrue(obj.carPooling([[2,1,5],[3,5,7]], 3))
        XCTAssertTrue(obj.carPooling([[3,2,7],[3,7,9],[8,3,9]], 11))
        XCTAssertTrue(obj.carPooling([[2,1,5]], 4))
        XCTAssertTrue(obj.carPooling([[3,2,8],[4,4,6],[10,8,9]], 11))
    }
    
    func test_1119_RemoveVowelsFromAString() throws {
        let obj = RemoveVowelsFromAString()
        XCTAssertTrue(obj.removeVowels("leetcodeisacommunityforcoders") == "ltcdscmmntyfrcdrs")
        XCTAssertTrue(obj.removeVowels("aeiou") == "")
    }
    
    func test_1165_SingleRowKeyboard() throws {
        XCTAssertTrue(SingleRowKeyboard().calculateTime("abcdefghijklmnopqrstuvwxyz", "cba") == 4)
        XCTAssertTrue(SingleRowKeyboard().calculateTime("pqrstuvwxyzabcdefghijklmno", "leetcode") == 73)
    }
    
    func test_1207_UniqueNumberOfOccurrences() throws {
        XCTAssertTrue(UniqueNumberOfOccurrences().uniqueOccurrences([1,2,2,1,1,3]))
        XCTAssertFalse(UniqueNumberOfOccurrences().uniqueOccurrences([1,2]))
        XCTAssertTrue(UniqueNumberOfOccurrences().uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]))
    }
    
    func test_1213_IntersectionOfThreeSortedArrays() throws {
        XCTAssertTrue(IntersectionOfThreeSortedArrays().arraysIntersection([1,2,3,4,5], [1,2,5,7,9], [1,3,4,5,8]) == [1,5])
        XCTAssertTrue(IntersectionOfThreeSortedArrays().arraysIntersection([197,418,523,876,1356],[501,880,1593,1710,1870], [521,682,1337,1395,1764]) == [])
    }
    
    func test_1249_MinimumRemoveToMakeValidParentheses() throws {
        XCTAssertTrue(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid("lee(t(c)o)de)") == "lee(t(c)o)de")
        XCTAssertTrue(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid("a)b(c)d") == "ab(c)d")
        XCTAssertTrue(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid("))((") == "")
        XCTAssertTrue(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid("(a(b(c)d)") == "a(b(c)d)")
    }
    
    func test_1286_CombinationIterator() throws {
        let iterator = CombinationIterator("abc", 2)
        XCTAssertTrue(iterator.next() == "ab") // returns "ab"
        XCTAssertTrue(iterator.hasNext()) // returns true
        XCTAssertTrue(iterator.next() == "ac") // returns "ac"
        XCTAssertTrue(iterator.hasNext()) // returns true
        XCTAssertTrue(iterator.next() == "bc") // returns "bc"
        XCTAssertFalse(iterator.hasNext()) // returns false
    }
    
    func test_1288_RemoveCoveredIntervals() throws {
        let obj = RemoveCoveredIntervals()
        XCTAssertTrue(obj.removeCoveredIntervals([[1,4],[3,6],[2,8]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[1,4],[2,3]]) == 1)
        XCTAssertTrue(obj.removeCoveredIntervals([[0,10],[5,12]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[3,10],[4,10],[5,11]]) == 2)
        XCTAssertTrue(obj.removeCoveredIntervals([[1,2],[1,4],[3,4]]) == 1)
    }
    
    func test_1329_SortTheMatrixDiagonally() throws {
        XCTAssertTrue(SortTheMatrixDiagonally().diagonalSort([[3,3,1,1],[2,2,1,2],[1,1,1,2]]) == [[1,1,1,1],[1,2,2,2],[1,2,3,3]])
    }
    
    func test_1337_TheKWeakestRowsInAMatrix() throws {
        XCTAssertTrue(TheKWeakestRowsInAMatrix().kWeakestRows([[1,1,0,0,0],
                                                               [1,1,1,1,0],
                                                               [1,0,0,0,0],
                                                               [1,1,0,0,0],
                                                               [1,1,1,1,1]], 3) == [2,0,3])
        XCTAssertTrue(TheKWeakestRowsInAMatrix().kWeakestRows([[1,0,0,0],
                                                               [1,1,1,1],
                                                               [1,0,0,0],
                                                               [1,0,0,0]], 2) == [0,2])
    }
    
    func test_1342_NumberOfStepsToReduceANumberToZero() throws {
        XCTAssertTrue(NumberOfStepsToReduceANumberToZero().numberOfSteps(123) == 12)
        XCTAssertTrue(NumberOfStepsToReduceANumberToZero().numberOfSteps(8) == 4)
        XCTAssertTrue(NumberOfStepsToReduceANumberToZero().numberOfSteps(14) == 6)
    }
    
    func test_1347_MinimumNumberOfStepsToMakeTwoStringsAnagram() throws {
        XCTAssertTrue(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps("bab", "aba") == 1)
        XCTAssertTrue(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps("leetcode", "practice") == 5)
        XCTAssertTrue(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps("anagram", "mangaar") == 0)
        XCTAssertTrue(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps("xxyyzz", "xxyyzz") == 0)
        XCTAssertTrue(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps("friend", "family") == 4)
    }
    
    func test_1379_FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree() throws {
        let node3 = TreeNode(3, left: TreeNode(6), right: TreeNode(19))
        let node5 = TreeNode(7, left: TreeNode(4), right: TreeNode(3, left: TreeNode(6), right: TreeNode(19)))
        let node6 = node5
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node5, node6, node3) == node3)
        
        let node1 = TreeNode(7)
        let node2 = node1
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node1, node2, node1) == node1)
        
        let node4 = TreeNode(4, right: TreeNode(3, right: TreeNode(2, right: TreeNode(1))))
        let node8 = TreeNode(8, right: TreeNode(7, right: TreeNode(6, right: TreeNode(5, right: node4))))
        let node = node8
        XCTAssert(FindACorrespondingNodeOfABinaryTreeInACloneOfThatTree().getTargetCopy(node8, node, node4) == node4)
    }
    
    func test_1389_CreateTargetArrayInTheGivenOrder() throws {
        XCTAssertTrue(CreateTargetArrayInTheGivenOrder().createTargetArray([0,1,2,3,4], [0,1,2,2,1]) == [0,4,1,3,2])
        XCTAssertTrue(CreateTargetArrayInTheGivenOrder().createTargetArray([1,2,3,4,0], [0,1,2,3,0]) == [0,1,2,3,4])
        XCTAssertTrue(CreateTargetArrayInTheGivenOrder().createTargetArray([1], [0]) == [1])
    }
    
    func test_1431_KidsWithTheGreatestNumberOfCandies() throws {
        XCTAssertTrue(KidsWithTheGreatestNumberOfCandies().kidsWithCandies([2,3,5,1,3], 3) == [true,true,true,false,true])
        XCTAssertTrue(KidsWithTheGreatestNumberOfCandies().kidsWithCandies([4,2,1,1,2], 1) == [true,false,false,false,false])
        XCTAssertTrue(KidsWithTheGreatestNumberOfCandies().kidsWithCandies([12,1,12], 10) == [true,false,true])
    }
    
    func test_1437_CheckIfAll1sAreAtLeastLengthKPlacesAway() throws {
        XCTAssertFalse(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([1,0,0,1,0,1], 2))
        XCTAssertTrue(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([1,1,1,1,1], 0))
        XCTAssertTrue(CheckIfAll1sAreAtLeastLengthKPlacesAway().kLengthApart([0,1,0,1], 1))
    }
    
    func test_1480_RunningSumOf1DArray() throws {
        XCTAssertTrue(RunningSumOf1DArray().runningSum([1,2,3,4]) == [1,3,6,10])
        XCTAssertTrue(RunningSumOf1DArray().runningSum([1,1,1,1,1]) == [1,2,3,4,5])
        XCTAssertTrue(RunningSumOf1DArray().runningSum([3,1,2,10,1]) == [3,4,6,16,17])
    }
    
    func test_1512_NumberOfGoodPairs() throws {
        XCTAssertTrue(NumberOfGoodPairs().numIdenticalPairs([1,2,3,1,1,3]) == 4)
        XCTAssertTrue(NumberOfGoodPairs().numIdenticalPairs([1,1,1,1]) == 6)
        XCTAssertTrue(NumberOfGoodPairs().numIdenticalPairs([1,2,3]) == 0)
    }
    
    func test_1539_KthMissingPositiveNumber() throws {
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([2,3,4,7,11], 5) == 9)
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([1,2,3,4], 2) == 6)
        XCTAssertTrue(KthMissingPositiveNumber().findKthPositive([1,13,18], 17) == 20)
    }
    
    func test_1631_PathWithMinimumEffort() throws {
        XCTAssertTrue(PathWithMinimumEffort().minimumEffortPath([[1,2,2],[3,8,2],[5,3,5]]) == 2)
        XCTAssertTrue(PathWithMinimumEffort().minimumEffortPath([[1,2,3],[3,8,4],[5,3,5]]) == 1)
        XCTAssertTrue(PathWithMinimumEffort().minimumEffortPath([[1,2,1,1,1],[1,2,1,2,1],[1,2,1,2,1],[1,2,1,2,1],[1,1,1,2,1]]) == 0)
    }
    
    func test_1640_CheckArrayFormationThroughConcatenation() throws {
        let obj1 = CheckArrayFormationThroughConcatenation()
        XCTAssertTrue(obj1.canFormArray([85], [[85]]))
        XCTAssertTrue(obj1.canFormArray([15,88], [[88],[15]]))
        XCTAssertFalse(obj1.canFormArray([49,18,16], [[16,18,49]]))
        XCTAssertTrue(obj1.canFormArray([91,4,64,78], [[78],[4,64],[91]]))
        XCTAssertFalse(obj1.canFormArray([1,3,5,7], [[2,4,6,8]]))
    }
    
    func test_1649_CreateSortedArrayThroughInstructions() throws {
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,5,6,2]) == 1)
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,2,3,6,5,4]) == 3)
        XCTAssertTrue(CreateSortedArrayThroughInstructions().createSortedArray([1,3,3,3,2,4,2,1,2]) == 4)
    }
    
    func test_1657_DetermineIfTwoStringsAreClose() throws {
        XCTAssertTrue(DetermineIfTwoStringsAreClose().closeStrings("abc", "bca"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("a", "aa"))
        XCTAssertTrue(DetermineIfTwoStringsAreClose().closeStrings("cabbba", "abbccc"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("cabbba", "aabbss"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose().closeStrings("uau", "ssx"))
    }
    
    func test_1658_MinimumOperationsToReduceXToZero() throws {
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([1,1,4,2,3], 5) == 2)
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([5,6,7,8,9], 4) == -1)
        XCTAssertTrue(MinimumOperationsToReduceXToZero().minOperations([3,2,20,1,1,3], 10) == 5)
    }
    
    func test_1662_CheckIfTwoStringArraysAreEquivalent() throws {
        XCTAssertTrue(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["ab", "c"], ["a", "bc"]))
        XCTAssertFalse(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["a", "cb"], ["ab", "c"]))
        XCTAssertTrue(CheckIfTwoStringArraysAreEquivalent().arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"]))
    }
    
    func test_1663_SmallestStringWithAGivenNumericValue() throws {
        XCTAssertTrue(SmallestStringWithAGivenNumericValue().getSmallestString(3, 27) == "aay")
        XCTAssertTrue(SmallestStringWithAGivenNumericValue().getSmallestString(5, 73) == "aaszz")
        XCTAssertTrue(SmallestStringWithAGivenNumericValue().getSmallestString(3, 25) == "aaw")
        XCTAssertTrue(SmallestStringWithAGivenNumericValue().getSmallestString(5, 42) == "aaamz")
    }
    
    func test_1675_MinimizeDeviationInArray() throws {
        XCTAssertTrue(MinimizeDeviationInArray().minimumDeviation([1,2,3,4]) == 1)
        XCTAssertTrue(MinimizeDeviationInArray().minimumDeviation([4,1,5,20,3]) == 3)
        XCTAssertTrue(MinimizeDeviationInArray().minimumDeviation([2,10,8]) == 3)
    }
    
    func test_1679_MaxNumberOfKSumPairs() throws {
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([1,2,3,4], 5) == 2)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([3,1,3,4,3], 6) == 1)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([3,5,1,5], 2) == 0)
        XCTAssertTrue(MaxNumberOfKSumPairs().maxOperations([2,2,2,3,1,1,4,1], 4) == 2)
    }
    
    func test_1680_ConcatenationOfConsecutiveBinaryNumbers() throws {
        XCTAssertTrue(ConcatenationOfConsecutiveBinaryNumbers().concatenatedBinary(1) == 1)
        XCTAssertTrue(ConcatenationOfConsecutiveBinaryNumbers().concatenatedBinary(3) == 27)
        XCTAssertTrue(ConcatenationOfConsecutiveBinaryNumbers().concatenatedBinary(12) == 505379714)
        XCTAssertTrue(ConcatenationOfConsecutiveBinaryNumbers().concatenatedBinary(42) == 727837408)
        XCTAssertTrue(ConcatenationOfConsecutiveBinaryNumbers().concatenatedBinary(63751) == 916407328)
    }
}
