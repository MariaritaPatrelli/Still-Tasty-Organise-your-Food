//
//  Food.swift
//  StillTasty
//
//  Created by Michele Coppola on 14/10/24.
//

import SwiftUI

struct Food : Identifiable {
    var id: UUID = UUID()
    var name : String
    var quantity : Int
    var expiringDate : String
}


