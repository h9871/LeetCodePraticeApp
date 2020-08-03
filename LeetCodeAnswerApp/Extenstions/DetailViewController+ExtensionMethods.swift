//
//  DetailViewController+ExtensionMethods.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 28/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import Foundation

///
/// 해당 알고리즘 실행
///
extension DetailViewController {
    func leetCode1464() {
        // inner func
        func maxProduct(_ nums: [Int]) -> Int {
            let sortedArray = nums.sorted { $0 > $1 }
            return (sortedArray[0] - 1) * (sortedArray[1] - 1)
        }
        // inner func end
        
        var result = 0
        let runTime = self.measureTime {
            result = maxProduct([3,4,5,2])
        }
        self.runTimeLabel.text = runTime
        self.resultLabel.text = String(result)
    }
    
    func leetCode1480() {
        // inner func
        func runningSum(_ nums: [Int]) -> [Int] {
            var sumIndex = 0
            var resultArray: [Int] = []
            nums.forEach { (index) in
                sumIndex += index
                resultArray.append(sumIndex)
            }
            return resultArray
        }
        // inner func end
        
        var result: [Int] = []
        let runTime = self.measureTime {
            result = runningSum([1,2,3,4])
        }
        self.runTimeLabel.text = runTime
        self.resultLabel.text = String(result)
    }
    
    func leetCode1528() {
        // inner func
        func restoreString(_ s: String, _ indices: [Int]) -> String {
            var result = s
            for (index, element) in s.enumerated() {
                result.remove(at: result.index(result.startIndex, offsetBy: indices[index]))
                result.insert(element, at: result.index(result.startIndex, offsetBy: indices[index]))
            }
            return result
        }
        // inner func end
        
        var result = ""
        let runTime = self.measureTime {
            result = restoreString("codeleet", [4,5,6,7,0,2,1,3])
        }
        self.runTimeLabel.text = runTime
        self.resultLabel.text = result
    }
    
    func leetCodeAugust1() {
        // inner func
        func detectCapitalUse(_ word: String) -> Bool {
            guard let isfirstCharUpper = word.first?.isUppercase else {
                print("error Data!")
                return false
            }
            var flag = 0
            word.forEach { (c) in
                if c.isUppercase {
                    flag += 1
                } else if c.isLowercase {
                    flag -= 1
                }
            }
            return isfirstCharUpper ?
                (flag == word.count) || (flag == -(word.count - 2))
                : (flag == -(word.count))
        }
        // inner func end
        
        var result = false
        let runTime = self.measureTime {
            result = detectCapitalUse("USA")
        }
        
        self.runTimeLabel.text = runTime
        self.resultLabel.text = String(result)
    }
}
