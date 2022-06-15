//
//  HomeView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Hello, home!")
        }.ignoresSafeArea()
    }
}

class HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: HomeView_Previews.previews)
    }
    #endif
}
