//
//  PatientPopulatable.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import Foundation

typealias Patient =  [String: String]

protocol PatientPopulatable: AnyObject {
    func configure(with patient: Patient)
}

extension PatientPopulatable {
    func configure(with patient: Patient) {}
}

extension PatientPopulatable where Self == PatientCell {
    
    func configure(with patient: Patient) {
        firstLabel.text = patient[PatientKey.first.rawValue] ?? "no name"
        LastLabel.text = patient[PatientKey.first.rawValue] ?? "no last"
        StatusLabel.text = patient[PatientKey.first.rawValue] ?? "no status"
    }
}
