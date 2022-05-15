//
//  Discover.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Discover: View {
    
    var bands: [Data] = concertsData
   
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                Text("Bands")
                    .padding(.top,50)
                ForEach(bands[0...5]){ item in
                    NavigationLink(destination: ConcertDetails(band: item)){
                    Concert(band: item)
                    }
                }
        
        }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover(bands: concertsData)
    }
}
