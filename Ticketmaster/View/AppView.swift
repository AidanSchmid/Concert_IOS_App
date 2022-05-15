//
//  AppView.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
           Discover()
                .tabItem({
                    Image(systemName: "guitars")
                    Text("Discover")
                })
            Favorites()
                .tabItem({
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                })
            Tickets()
                .tabItem({
                    Image(systemName: "ticket.fill")
                    Text("Tickets")
                })
            My_Account()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("My Account")
                })
            
            Settings()
                .tabItem({
                    Image(systemName: "gear")
                    Text("Settings")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
