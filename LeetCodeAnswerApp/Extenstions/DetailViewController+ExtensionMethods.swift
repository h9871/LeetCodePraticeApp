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
        
        let result = maxProduct([3,4,5,2])
        self.resultLabel.text = String(result)
    }
}
