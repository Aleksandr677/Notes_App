//
//  DetailView.swift
//  Notes_App Watch App
//
//  Created by Христиченко Александр on 2022-11-07.
//

import SwiftUI

struct DetailView: View {
    //MARK: - PROPERTIES
    let note: Note
    let count: Int
    let index: Int
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            //HEADER
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //HStack
            .foregroundColor(.accentColor)
            
            //CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            //POOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
            } //HStack
            .foregroundColor(.secondary)
            
        } //VStack
        .padding(3)
    }
}


//MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var sampleData = Note(id: UUID(), text: "Hello, World!")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
