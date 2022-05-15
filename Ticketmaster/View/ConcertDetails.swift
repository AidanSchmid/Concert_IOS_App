//
//  ConcertDetails.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI


struct ConcertDetails: View {
    var band: Data
    var shows: [Events] = showsData
    
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
        VStack(alignment: .leading, spacing: 0.0){
            Image(band.image)
                .resizable()
                .padding(0.0)
                .scaledToFit()
            
            cardText.padding(.horizontal,8)
            ForEach(shows[0...5]){ item in
                NavigationLink(destination: SetList(band: concertsData[1])){
                Shows(shows: item)
                }
            }
            
            
               
            
            
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(radius: 8)

        }.edgesIgnoringSafeArea(.top)
        
    }
    
    var cardText: some View{
        VStack(alignment: .leading){
            Text(band.band)
                .font(.headline)
            Text(band.description)
            
        }.foregroundColor(.gray)
            .padding(.bottom, 20)
            .padding(.top, 20)
    }
    
}

struct ConcertDetails_Previews: PreviewProvider {
    static var previews: some View {
        ConcertDetails(band:concertsData[1],shows: showsData)
    }
}
