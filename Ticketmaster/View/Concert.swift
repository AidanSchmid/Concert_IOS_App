//
//  Concert.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Concert: View {
    var band: Data
    var body: some View {
        
        
        
        VStack(alignment: .leading, spacing: 16.0){
            Image(band.image)
                .resizable()
                .scaledToFit()
                
            cardText.padding(.horizontal,8)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(radius: 8)
        .padding()
        
        
    
    }
    var cardText: some View{
        HStack(spacing:20){
        VStack(alignment: .leading){
            Text(band.band)
                .font(.headline)
            Text(band.description)
            
        }
            Spacer()
            Button(action: {
                print("Delete button tapped!")
            }) {
                Image(systemName: "heart")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
        
    }.foregroundColor(.gray)
            .padding(.bottom, 16)
    }
    

}

struct Concert_Previews: PreviewProvider {
    static var previews: some View {
        Concert(band:concertsData[1])
    }
}
