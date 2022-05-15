//
//  Settings.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
        VStack{
        Text("Settings")
            .multilineTextAlignment(.center)
            
        
        HStack{
        Text("Set alerts")
                .padding(.top,100)
                .padding()
            Spacer()
        }
        HStack{
        Text("Set Search Location: ")
            .padding()
        Spacer()
        Text("Hamden ")
        }
        HStack{
        Text("Set Zip Code ")
            .padding()
        Spacer()
        Text("06470")
        }
        }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
