//
//  DataModel.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Data: Identifiable{
    var id = UUID()
    var band: String
    var image: String
    var description: String
    var setList: [String]
    var links: [String]
    
}
struct Events: Identifiable{
    var id = UUID()
    var date: String
    var price: Double
    var location: String
    var time: String
}
