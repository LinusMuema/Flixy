//
//  SettingsView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Hello, settings!")
    }
}

class SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: SettingsView_Previews.previews)
    }
    #endif
}
