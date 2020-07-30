//
//  String+Formatter.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 30/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import Foundation

extension String {
    
    ///
    /// 정수형 배열을 문자열로 변환
    /// - Parameters: 정수형 배열
    ///
    init(_ array: [Int]) {
        var result = ""
        for (index, element) in array.enumerated() {
            if index == array.count - 1 {
                result += String(element)
            } else {
                result += String(element) + ","
            }
        }
        self = "[" + result + "]"
    }
}
