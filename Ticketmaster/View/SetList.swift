//
//  SetList.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI
import MapKit
struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
struct SetList: View {
    @State private var counter: Int = 0
    @State private var counter2: Int = 0
    let locations = [
        Location(name: "Hartford CT", coordinate: CLLocationCoordinate2D(latitude: 41.7658, longitude: -72.6734)),
        
    ]
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.7658, longitude: -72.6734), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var band: Data
    var body: some View {
    
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text(location.name)
                        VStack(alignment: .leading){
                            Text("Set List")
                                .bold()
                                .padding(.top,20)
                                .padding(.bottom,5)
                            
                            HStack{
                            Text(band.setList[0])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                                
                            }
                            HStack{
                                Text(band.setList[1])
                                Spacer()
                                Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                    .font(.subheadline)
                                    .padding(.horizontal)
                                }
                            HStack{
                            Text(band.setList[2])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                            HStack{
                            Text(band.setList[0])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                            HStack{
                            Text(band.setList[1])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                            HStack{
                            Text(band.setList[2])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                            HStack{
                            Text(band.setList[0])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                            HStack{
                            Text(band.setList[1])
                            Spacer()
                            Text("[Play](https://www.youtube.com/watch?v=qHm9MG9xw1o)")
                                .font(.subheadline)
                                .padding(.horizontal)
                            }
                        }.padding(.bottom,20)
                        
                        HStack(alignment: .center, spacing: 6, content: {
                            Text("Number of Adults")
                            Button(action: {counter-=1}, label: {
                                Image(systemName: "minus.circle")
                            })
                          Text("\(counter)")
                            Button(action: {counter+=1}, label: {
                                Image(systemName: "plus.circle")
                            })
                        })
                        HStack(alignment: .center, spacing: 6, content: {
                            Text("Number of Kids")
                            Button(action: {counter2-=1}, label: {
                                Image(systemName: "minus.circle")
                            })
                          Text("\(counter2)")
                            Button(action: {counter2+=1}, label: {
                                Image(systemName: "plus.circle")
                            })
                        })
                        Button(action:{},label: {
                            Spacer()
                            Text("Add to cart")
                               
                            Spacer()
                        })
                        .background(.blue)
                        .padding(.top,20)
                        .clipShape(Capsule())
                        
                                   
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            .navigationTitle("Venue Location")
        }
    }
}

struct SetList_Previews: PreviewProvider {
    static var previews: some View {
        SetList(band: concertsData[1])
    }
}
