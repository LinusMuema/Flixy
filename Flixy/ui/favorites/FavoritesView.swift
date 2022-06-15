//
//  FavoritesView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        Text("Hello, favorites!")
    }
}

class FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: FavoritesView_Previews.previews)
    }
    #endif
}
