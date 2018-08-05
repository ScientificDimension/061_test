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
    func populate(with patient: Patient)
}

extension PatientPopulatable {
    func populate(with patient: Patient) {}
}

extension PatientPopulatable where Self == PatientCell {
    
    func populate(with patient: Patient) {
        first.text =  patient.get(.first)
        last.text =   patient.get(.last)
        status.text = patient.get(.status)
    }
}
