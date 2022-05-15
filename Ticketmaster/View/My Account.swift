//
//  My Account.swift
//  Ticketmaster
//
//  Created by user219546 on 5/11/22.
//

import SwiftUI


struct My_Account: View {
   
    var body: some View {
        
       ScrollView(.vertical,showsIndicators: false){
        VStack(alignment: .center, spacing: 0.0){

        RoundedRectangle(cornerRadius: 50, style: .continuous)
                .frame(width:100,height:100)
                .overlay{
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .frame(width:50,height:50)
                            .colorInvert()
                
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .frame(width:50,height:70)
                        .padding(.top,100)
                        .colorInvert()

                    

                    }
                

            Text("Welcome Aidan")
                .multilineTextAlignment(.center)
                .padding()
            
            HStack{
            Text("Change Account Details:")
                    .padding(.top,100)
                    .padding()
                Spacer()
            }
            HStack{
            Text("Email: ")
                .padding()
            Spacer()
            Text("a@quinnipiac.edu ")
            }
            HStack{
            Text("Phone Number: ")
                .padding()
            Spacer()
            Text("222-222-2222 ")
            }
            HStack{
            Text("Log Out")
                .multilineTextAlignment(.leading)
                .padding(.top,50)
                .padding()
                Spacer()
            }


        }
    
            }
                    
                
        }
    }



struct My_Account_Previews: PreviewProvider {
    static var previews: some View {
        My_Account()
    }
}

