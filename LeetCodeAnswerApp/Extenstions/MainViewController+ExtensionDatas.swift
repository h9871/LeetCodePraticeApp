//
//  MainViewController+ExtensionDatas.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 28/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import Foundation

///
/// 해당 문제 정보
///
extension MainViewController {
    func setData() {
        self.data = []
        
        let data1 = LeetCodeData()
        data1.num = 1
        data1.title = "LeetCode1464"
        data1.description =
        """
        Given the array of integers nums, you will choose two different indices i and j of that array. Return the maximum value of (nums[i]-1)*(nums[j]-1).

        Example 1:

        Input: nums = [3,4,5,2] Output: 12 Explanation: If you choose the indices i=1 and j=2 (indexed from 0), you will get the maximum value, that is, (nums[1]-1)*(nums[2]-1) = (4-1)*(5-1) = 3*4 = 12.

        Example 2:

        Input: nums = [1,5,4,5] Output: 16 Explanation: Choosing the indices i=1 and j=3 (indexed from 0), you will get the maximum value of (5-1)*(5-1) = 16.

        Example 3:

        Input: nums = [3,7] Output: 12

        Constraints:

        2 <= nums.length <= 500
        1 <= nums[i] <= 10^3
        """
        data1.input = "[3,4,5,2]"
        self.data?.append(data1)
        
        let data2 = LeetCodeData()
        data2.num = 2
        data2.title = "LeetCode1480"
        data2.description =
        """
        Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
        Return the running sum of nums.

        Example 1:
        
        Input: nums = [1,2,3,4] Output: [1,3,6,10] Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
        
        Example 2:

        Input: nums = [1,1,1,1,1] Output: [1,2,3,4,5] Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].

        Example 3:

        Input: nums = [3,1,2,10,1] Output: [3,4,6,16,17]
        
        Constraints:

        1 <= nums.length <= 1000
        -10^6 <= nums[i] <= 10^6
        """
        data2.input = "[1,2,3,4]"
        self.data?.append(data2)
        
        let data3 = LeetCodeData()
        data3.num = 3
        data3.title = "LeetCode1528"
        data3.description =
        """
        Given a string s and an integer array indices of the same length.
        The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
        Return the shuffled string.

        Example 1:

        Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3] Output: "leetcode" Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.

        Example 2:

        Input: s = "abc", indices = [0,1,2] Output: "abc" Explanation: After shuffling, each character remains in its position.

        Example 3:

        Input: s = "aiohn", indices = [3,1,4,2,0] Output: "nihao"

        Example 4:

        Input: s = "aaiougrt", indices = [4,0,2,6,7,3,1,5] Output: "arigatou"

        Example 5:

        Input: s = "art", indices = [1,0,2] Output: "rat"

        Constraints:

        s.length == indices.length == n
        1 <= n <= 100
        s contains only lower-case English letters.
        0 <= indices[i] < n
        All values of indices are unique (i.e. indices is a permutation of the integers from 0 to n - 1).
        """
        data3.input = "codeleet, [4,5,6,7,0,2,1,3]"
        self.data?.append(data3)
        
        let data4 = LeetCodeData()
        data4.num = 4
        data4.title = "LeetCode August1"
        data4.description =
        """
        Given a word, you need to judge whether the usage of capitals in it is right or not.

        We define the usage of capitals in a word to be right when one of the following cases holds:

        All letters in this word are capitals, like "USA".
        All letters in this word are not capitals, like "leetcode".
        Only the first letter in this word is capital, like "Google".
        Otherwise, we define that this word doesn't use capitals in a right way.

        Example 1:
        Input: "USA" Output: True

        Example 2:
        Input: "FlaG" Output: False

        Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
        """
        data4.input = "USA"
        self.data?.append(data4)
    }
}
