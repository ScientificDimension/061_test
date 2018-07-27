//
//  PatientCell.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import UIKit

class PatientCell: UITableViewCell, PatientPopulatable {
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var LastLabel: UILabel!
    @IBOutlet var StatusLabel: UILabel!

    // MARK: - Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
