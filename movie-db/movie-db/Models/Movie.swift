//
//  Movie.swift
//  movie-db
//
//  Created by katia kutsi on 7/3/20.
//  Copyright © 2020 Mishka TBC. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let poster: String
    let title: String
    let imdb: Double
    let overview: String

    enum CodingKeys: String, CodingKey {
        case poster = "poster_path"
        case title = "original_title"
        case imdb = "vote_average"
        case overview
    }
}

struct MoviesResponse: Codable {
    let movies : [Movie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}
