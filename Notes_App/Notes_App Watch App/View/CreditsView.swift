//
//  CreditsView.swift
//  Notes_App Watch App
//
//  Created by Христиченко Александр on 2022-11-07.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTIES
    @State private var randomNumber = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 3) {
            //PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            //HEADER
            HeaderView(title: "Credits")
            
            //CONTENT
            Text("Alex Kh.")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        } //VStack
    }
}


//MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
