//
//  ImageData.swift
//  Flixy
//
//  Created by Linus Muema on 13/07/2022.
//

import Foundation
import SwiftUI

struct ImageData {
    let scale: Int
    let imageUrl: URL
    @ViewBuilder let overlay: View
}
