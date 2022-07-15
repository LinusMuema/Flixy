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
        let imageUrl: URL = URL(string: "https://image.tmdb.org/t/p/w780/\(movie.backdrop_path)")!
        
        ImageView(imageUrl: imageUrl, scale: 1.5, overlay: {
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text(movie.original_title)
                        .font(.title)
                        .fontWeight(.medium)
                            .foregroundColor(Color.white)

                    HStack {
                        ForEach(1...5, id: \.self) { i in
                            let color = Int(movie.vote_average) >= i ?  Color.yellow : Color.gray
                            Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(color)
                        }
                    }
                }
                .padding([.leading, .bottom])
                Spacer()
            }.frame(maxWidth: UIScreen.screenWidth)
            .background(LinearGradient(gradient: Gradient(colors: [.black.opacity(0), .black.opacity(0), .black]), startPoint: .top, endPoint: .bottom))

        })
    }
}

struct ShowingView_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(id: 1, adult: true, video: false, overview: "", poster_path: "/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg", vote_average: 4.3, backdrop_path: "/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg", original_title: "Dumbledore")
        ShowingView(movie: movie)
    }
}
