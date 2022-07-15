//
//  HomeView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct HomeView: View {

    @State private var index = 0
    @StateObject private var viewModel = ViewModel()

    

    var body: some View {
        let showing: [Movie] = viewModel.showing
        VStack{
            if (showing.isEmpty){
                // show a loading animation
                Text("Loading...")
            } else {
                TabView(selection: $index) {
                    // loop through the showing array
                    ForEach(0..<showing.count, id: \.self) { i in
                        ShowingView(movie: showing[i])
                    }
                }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
