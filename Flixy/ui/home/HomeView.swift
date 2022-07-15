//
//  HomeView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        VStack {
            Text("Hello, home!")
        }
            .ignoresSafeArea()
            .onAppear {viewModel.getShowing()}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
