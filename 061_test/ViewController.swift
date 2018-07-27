//
//  ViewController.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    let tableViewFlow = TableViewFlow()
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewFlow.configure(tableView)
    }
    
}
