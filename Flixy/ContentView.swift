//
//  ContentView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, muema!")
                .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView_Previews.previews)
    }
    #endif
}
