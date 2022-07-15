import Foundation

struct MoviesResponse: Decodable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int
}

struct Movie: Decodable, Identifiable {
    let id: Int
    let adult: Bool
    let video: Bool
    let overview: String
    let posterPath: String
    let voteAverage: Double?
    let backdropPath: String
    let originalTitle: String
}
