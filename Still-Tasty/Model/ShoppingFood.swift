//
//  Shopping.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 15/10/24.
//

import SwiftUI

struct ShoppingFood : Identifiable {
    var id: UUID = UUID()
    var name : String
    var quantity : Int = 1
    var preso: Bool = false
}
