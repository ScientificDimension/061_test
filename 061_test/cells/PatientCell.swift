//
//  PatientCell.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import UIKit

class PatientCell: UITableViewCell, PatientPopulatable {
    
    static var height: CGFloat = 100
    
    @IBOutlet var first: UILabel!
    @IBOutlet var last: UILabel!
    @IBOutlet var status: UILabel!

    // MARK: - Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
