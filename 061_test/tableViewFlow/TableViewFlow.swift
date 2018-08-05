//
//  TableViewFlow.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import UIKit

enum PatientKey: String {
    case first
    case last
    case status
    
    var defaultValue: String {
        switch self {
        case .first:
            return "no first"
        case .last:
            return "no last"
        case .status:
            return "no status"

        }
    }
}

class TableViewFlow: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    weak var tableView: UITableView?
    
    // MARK: - dataSource
    
    let patients: [Patient] = [
        ["first":"Ada","last":"Wolf","status":"archived"],
        ["first":"Ada","last":"Andrade","status":"brand_new"],
        ["first":"Adela","last":"Valdez","status":"archived"],
        ["first":"Adela","last":"Best","status":"archived"],
        ["first":"Alden","last":"Singh","status":"brand_new"],
        ["first":"Aldo","last":"Snow","status":"in_treatment"],
        ["first":"Alexandria","last":"Mcdonald","status":"archived"],
        ["first":"Alfredo","last":"Landry","status":"brand_new"],
        ["first":"Alisha","last":"Barr","status":"in_treatment"],
        ["first":"Wilson","last":"Stuart","status":"in_treatment"]
    ]
    
    func configure(_ tableView: UITableView) {
        
        self.tableView = tableView
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = PatientCell.height
        
        tableView.register(
            UINib(nibName: "\(PatientCell.self)", bundle: nil),
            forCellReuseIdentifier: "\(PatientCell.self)")
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(PatientCell.self)", for: indexPath) as? PatientCell else {
            return UITableViewCell()
        }
        cell.configure(with: patients[indexPath.row])
        return cell
        
    }
}
