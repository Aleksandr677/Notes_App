//
//  SettingsView.swift
//  Notes_App Watch App
//
//  Created by Христиченко Александр on 2022-11-07.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - FUNC
    func update() {
        lineCount = Int(value)
    }
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 8) {
            //HEADER
            HeaderView(title: "Settings")
            
            //CURRENT NUMBER OF LINES
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            //SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: { newValue in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //VStack
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
