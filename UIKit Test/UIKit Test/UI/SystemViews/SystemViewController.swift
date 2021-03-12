//
//  SystemViewController.swift
//  UIKit Test
//
//  Created by 김기현 on 2021/03/12.
//

import UIKit

class SystemViewController: UIViewController {
    @IBOutlet weak var systemTableView: UITableView!
    
    private let data: [String] = ["UILabel", "UIImageView", "UITextView", "UIScrollView", "UITableView", "UIToolbar", "UINavigationBar", "UITabBar"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTableView()
    }
    
    private func initTableView() {
        let nibName = UINib(nibName: "SystemTableViewCell", bundle: nil)
        systemTableView.register(nibName, forCellReuseIdentifier: "SystemViewCell")
        
        systemTableView.delegate = self
        systemTableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate
extension SystemViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension SystemViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SystemViewCell", for: indexPath) as? SystemTableViewCell else {
            return UITableViewCell()
        }
        
        cell.systemViewLabel.text = data[indexPath.row]
        
        return cell
    }
}
