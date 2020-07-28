//
//  MainViewDataSource.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 28/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import UIKit

class MainViewDataSource: NSObject, UITableViewDataSource {
    
    var data: [LeetCodeData]? = nil
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = data else {
            return 0
        }
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        guard let data = data?[indexPath.row] else {
            print("No Data!!!")
            return UITableViewCell()
        }
        
        cell.textLabel?.text = data.title
        return cell
    }
}
