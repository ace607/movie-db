//
//  APIService.swift
//  movie-db
//
//  Created by katia kutsi on 7/3/20.
//  Copyright © 2020 Mishka TBC. All rights reserved.
//

import Foundation

struct APIService {
    
    func getPopularMovies(completion: @escaping (MoviesResponse)->()) {

        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?language=en-US&api_key=0fa79c85c4bd0a683eb77d3ada60eca1&page=1")!

        URLSession.shared.dataTask(with: url) { (data, res, err) in
        
            guard let data = data else {return}
        
            do {
                let decoder = JSONDecoder()
                let moviesResponse = try decoder.decode(MoviesResponse.self, from: data)
            
                completion(moviesResponse)
                
            } catch {print(error)}
            
        
        }.resume()
    }

    func getTopRatedMovie(completion: @escaping (Movie)->()) {

        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?language=en-US&api_key=0fa79c85c4bd0a683eb77d3ada60eca1&page=1")!

        URLSession.shared.dataTask(with: url) { (data, res, err) in
        
            guard let data = data else {return}
        
            do {
                let decoder = JSONDecoder()
                let moviesResponse = try decoder.decode(MoviesResponse.self, from: data)
                
                let number = Int.random(in: 0 ... 20)
                completion(moviesResponse.movies[number])
                
            } catch {print(error)}
            
        
        }.resume()
    }
}
