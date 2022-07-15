import Foundation

struct MoviesResponse: Decodable {
    let page: Int
    let results: [Movie]
    let total_pages, total_results: Int
}

struct Movie: Decodable, Identifiable {
    let id: Int
    let adult: Bool
    let video: Bool
    let overview: String
    let poster_path: String
    let vote_average: Double
    let backdrop_path: String
    let original_title: String
}
