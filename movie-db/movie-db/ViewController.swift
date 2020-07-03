//
//  ViewController.swift
//  movie-db
//
//  Created by Admin on 7/3/20.
//  Copyright © 2020 Mishka TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var apiService = APIService()
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiService.getPopularMovies { (movies) in
            self.movies.append(contentsOf: movies.movies)
            //print(movies)
        }
        
        apiService.getTopRatedMovie { (movie) in
            print(movie)
        }
        
    }


}

