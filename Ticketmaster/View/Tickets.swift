//
//  Tickets.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Tickets: View {
    var bands: [Data] = concertsData
    var shows: [Events] = showsData
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                Text("Tickets")
                    .padding(.top,50)
                
                
                ForEach(bands[0...2]){ item in
                    VStack{
                    NavigationLink(destination: ConcertDetails(band: item)){
                    Concert(band: item)
                    
                        
                    }
                    Shows(shows: showsData[1])
                            .padding()
                }
                
                        
                }.background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
                    .shadow(radius: 8)
                    .padding()
        }.edgesIgnoringSafeArea(.top)
            }
        
    }
    
}
struct Tickets_Previews: PreviewProvider {
    static var previews: some View {
        Tickets(bands:concertsData,shows: showsData)
    }
}
