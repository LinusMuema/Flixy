//
//  ImageView.swift
//  Flixy
//
//  Created by Linus Muema on 13/07/2022.
//

import SwiftUI

struct ImageView<OverLay: View>: View {
    let imageUrl: URL
    let scale: CGFloat
    let overlay: () -> OverLay
    
    init (imageUrl: URL, scale: CGFloat, @ViewBuilder overlay: @escaping () -> OverLay){
        self.scale = scale
        self.overlay = overlay
        self.imageUrl = imageUrl
        
    }

    var body: some View {
        AsyncImage(url: imageUrl, scale: scale){phase in
            switch phase {
            case .empty:
                ProgressView().progressViewStyle(.circular)
            case .success(let image):
                image.scaledToFill().overlay { overlay() }
            case .failure(_):
                Text("Check your network connection")
            @unknown default:
                Text("Unknown error loading image")
            }
        }
    }
}
