//
//  InitializeTableView.swift
//  UIKit Test
//
//  Created by 김기현 on 2021/03/12.
//

import Foundation
import UIKit

func initTableView(tableView: UITableView, nibNameStr: String, identifier: String) {
    let nibName = UINib(nibName: nibNameStr, bundle: nil)
    tableView.register(nibName, forCellReuseIdentifier: identifier)
}
