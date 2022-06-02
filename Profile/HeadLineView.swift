//
//  HeadLineView.swift
//  Profile
//
//  Created by Mohamed Hasseb on 02/06/2022.
//

import SwiftUI

struct HeadlineView: View {
    
    //MARK: - Properties
    var headlineImage: String
    var headlineTitle: String
    
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headlineImage)
                .foregroundColor(Color.accentColor)
                .font(.title2)
            
            Text(headlineTitle)
                .lineLimit(1)
                .layoutPriority(1)
                .foregroundColor(.white)
        }
    }
}

 //MARK: - Preview
struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineView(headlineImage: "person.circle", headlineTitle: "Mohamed Haseeb")
            
    }
}
