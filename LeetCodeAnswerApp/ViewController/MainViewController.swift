//
//  ViewController.swift
//  LeetCodeAnswerApp
//
//  Created by 유현재 on 28/07/2020.
//  Copyright © 2020 유현재. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    
    /// IBOutlet Properties
    @IBOutlet weak var tableView: UITableView!
    
    /// Properties
    var dataSource: MainViewDataSource? = nil
    var data: [LeetCodeData]? = nil
    
    /// Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
    }
    
    /// Init Methods
    private func initView() {
        self.setData()
        self.initTable()
    }
    
    private func initTable() {
        self.dataSource = MainViewDataSource()
        self.tableView.delegate = self
        self.tableView.dataSource = self.dataSource
        self.dataSource?.data = data
    }
}

///
/// MARK:- TableView Delegate
///
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let data = self.data?[indexPath.row] else {
            self.makeErrorDialog()
            return
        }
        DetailViewController.detailData = data
        self.performSegue(withIdentifier: "detailView", sender: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

///
/// MARK:- 화면 처리
///
extension MainViewController {
    
    ///
    /// 다이어로그 표시
    /// - Parameters:-
    ///
    func makeErrorDialog() {
        let dialog = UIAlertController(title: "No Data!", message: "Data is Nil", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        dialog.addAction(action)
        self.present(dialog, animated: true, completion: nil)
    }
}

