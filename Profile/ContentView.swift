//
//  ContentView.swift
//  Profile
//
//  Created by Mohamed Hasseb on 02/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            HStack (alignment: .center, spacing: 20) {
                
                VStack {
                    Image("Haseeb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .background(Color.accentColor.opacity(0.2))
                        .cornerRadius(15)
                    
                    Text("Mohamed\nHaseeb")
                        .foregroundColor(Color.accentColor)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .layoutPriority(1)
                    
                    
                    
                } //: VStack
                .padding(.leading,10)
                
                Divider()
                    .padding(.vertical)
                    .padding(.horizontal,1)
                
                
                VStack(alignment: .leading, spacing: 13){
                    HeadlineView(headlineImage: "person.circle",headlineTitle: "Mohamed Haseeb")
                    HeadlineView(headlineImage: "envelope.fill",headlineTitle:  "hasseb@gmail.com")
                    HeadlineView(headlineImage: "phone.circle.fill",headlineTitle:  "+201009378684")
                    HeadlineView(headlineImage: "house.fill",headlineTitle: "43, Egypt")
                    
                }//: VStack
                
            } //: HStack
            .background(Color("ColorBackground"))
            .cornerRadius(8)
            
        }//: ZStak
        .frame(width: 375, height: 200)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
        }
    }
}
