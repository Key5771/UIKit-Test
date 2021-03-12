//
//  ControlViewController.swift
//  UIKit Test
//
//  Created by 김기현 on 2021/03/12.
//

import UIKit

class ControlViewController: UIViewController {
    @IBOutlet weak var controlTableView: UITableView!
    
    private let data: [String] = ["UIButton", "UISegmentedControl", "UITextField", "UISlider", "UIDatePicker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initTableView(tableView: controlTableView, nibNameStr: "ControlTableViewCell", identifier: "ControlCell")
        
        controlTableView.delegate = self
        controlTableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate
extension ControlViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension ControlViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ControlCell", for: indexPath) as? ControlTableViewCell else {
            return UITableViewCell()
        }
        
        cell.controlLabel.text = data[indexPath.row]
        
        return cell
    }
    
    
}
