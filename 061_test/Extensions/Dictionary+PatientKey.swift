//
//  Dictionary+PatientKey.swift
//  061_test
//
//  Created by Oleg Kolomyitsev on 27/07/2018.
//  Copyright © 2018 Oleg Kolomyitsev. All rights reserved.
//

import Foundation

extension Dictionary where Key == String, Value == String {
    
    func get(_ key: PatientKey) -> String {
        return self[key.rawValue] ?? key.defaultValue
    }
}
