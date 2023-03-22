//
//  ContentView.swift
//  ToggleCheck
//
//  Created by admin on 22.03.2023.
//

import SwiftUI



    

struct ContentView: View {
    @State var isAlert = true
    @State private var vibrateOnRing = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }
        }.alert(isPresented: $isAlert){
            Alert(title: Text("Ошибка"),dismissButton: .default(Text("OK")))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
