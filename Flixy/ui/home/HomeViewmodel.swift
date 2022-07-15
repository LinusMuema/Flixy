//
//  HomeViewmodel.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import Foundation

extension HomeView {
    @MainActor class ViewModel: ObservableObject {
        @Published var showing: [Movie] = []

        func getShowing() {
            guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a975ca649ea8e1af5e8aa1017ed860bb&language=en-US&page=1") else {
                fatalError("URL is not correct")
            }

            let request = URLRequest(url: url)
            let config = URLSessionConfiguration.default
            config.waitsForConnectivity = true

            let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    fatalError(error.localizedDescription)
                }

                guard let response = response as? HTTPURLResponse else {
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    DispatchQueue.main.async {
                        do {
                            let showingResponse = try JSONDecoder().decode(MoviesResponse.self, from: data)
                            self.showing = showingResponse.results
                        } catch let error {
                            print("Error decoding: ", error)
                        }
                    }
                }
            }

            dataTask.resume()
        }
    }
}
