//
//  DetailViewController.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 28/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import UIKit

class DetailViewController: BaseViewController {
    
    /// IBOutlet Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var runTimeLabel: UILabel!
    
    /// Properties
    static var detailData: LeetCodeData? = nil

    /// Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
    }
    
    /// Init Methods
    private func initView() {
        guard let detailData = DetailViewController.detailData else {
            print("No Data!!!")
            return
        }
        
        self.titleLabel.text = detailData.title
        self.descriptionLabel.text = detailData.description
        self.inputLabel.text = detailData.input
        // 코드 실행
        self.processCode(detailData.num)
    }
}

///
/// MARK:- Processing Code
///
extension DetailViewController {
    ///
    /// 해당 문제 처리
    /// - Parameters: 문제 번호
    ///
    private func processCode(_ dataNumber: Int) {
        switch dataNumber {
        case 1: self.leetCode1464()
        case 2: self.leetCode1480()
        case 3: self.leetCode1528()
        case 4: self.leetCodeAugust1()
        default:
            print("No Data!!!")
        }
    }
    
    ///
    /// 처리 시간 측정
    /// - Parameters: closure
    /// - Returns: 시간 측정 결과
    ///
    public func measureTime(_ closure: () -> ()) -> String {
        let startDate = Date()
        closure()
        return self.stringFromTimeInterval(interval: Date().timeIntervalSince(startDate))
    }
    
    ///
    /// TimeInterval -> String 변환
    /// - Parameters: 측정된 TimeInterval
    /// - Returns: 변환된 문자열
    ///
    private func stringFromTimeInterval(interval: TimeInterval) -> String {
        let time = Int(interval)
        // 세밀한 시간 측정을 위해 임의로 1000000로 설정
        let ms = Int((interval.truncatingRemainder(dividingBy: 1)) * 1000000)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        let hours = (time / 3600)
        return String(format: "%0.2d:%0.2d:%0.2d.%0.3d",hours,minutes,seconds,ms)
    }
}
