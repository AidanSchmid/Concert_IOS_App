//
//  ContentView.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//
import Social
import SwiftUI

struct Favorites: View {
    @State private var isShareSheetShowing = false
    var url : String = "https://www.ticketmaster.com/"
    var bands: [Data] = concertsData
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                Text("Favoites")
                    .padding(.top,50)
                ForEach(bands[2...2]){ item in
                    NavigationLink(destination: ConcertDetails(band: item)){
                    Concert(band: item)
                    }
                }
                Button(action: shareButton){
                           Image(systemName: "square.and.arrow.up")
                               .frame(width: 35, height: 35)
                            Text("Share")
                       }
                   }.edgesIgnoringSafeArea(.top)
                   
                   
                   
                            
                }
                
        }
        
        //}
        
func shareButton() {
    isShareSheetShowing.toggle()
    let items: [Any] = [URL(string: url)!, "Get Tickets To the Show"]
    
    let av = UIActivityViewController(activityItems: items, applicationActivities: nil)
    
    UIApplication.shared.windows.first?.rootViewController!.present(av, animated: true, completion: nil)
}
}


struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites(bands: concertsData)
    }
}
