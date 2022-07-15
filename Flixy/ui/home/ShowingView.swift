//
//  ShowingView.swift
//  Flixy
//
//  Created by Linus Muema on 15/06/2022.
//

import SwiftUI

struct ShowingView: View {
    var movie: Movie

    var body: some View {
        let imageUrl: URL = URL(string: "https://image.tmdb.org/t/p/original/\(movie.backdropPath)")!
        
        ImageView(imageUrl: imageUrl, scale: 8, overlay: {
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text(movie.originalTitle)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Text(String(movie.voteAverage!))
                        
                }
                .padding([.leading, .bottom])
                Spacer()
            }.frame(maxWidth: UIScreen.screenWidth)
        })
    }
}

struct ShowingView_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(id: 1, adult: true, video: false, overview: "", posterPath: "/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg", voteAverage: 4.3, backdropPath: "/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg", originalTitle: "Dumbledore")
        ShowingView(movie: movie)
    }
}
