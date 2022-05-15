//
//  Shows.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI

struct Shows: View {
    //var data: Data
    var shows : Events
    var body: some View {
        HStack(spacing:20){
                
            VStack(alignment: .leading, spacing:6){
                Text(shows.location)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Text(shows.date)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                Text(shows.time)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text((shows.price),format: .currency(code: "USD"))
                .bold()
                
        }.padding([.top,.bottom],8)
            .padding(.horizontal,10)
    }

    }


struct Shows_Previews: PreviewProvider {
    static var previews: some View {
        Shows(shows: showsData[2])
    }
}
