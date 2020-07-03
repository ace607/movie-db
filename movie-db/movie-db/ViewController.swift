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
<<<<<<< HEAD
        // Do any additional setup after loading the view.
<<<<<<< HEAD
        
        moviesCollection.dataSource = self
        moviesCollection.delegate = self
        
        moviesCollection.backgroundColor = .black
        
        
        moviesCollection.register(UINib(nibName: "HeaderCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "header_cell")
        moviesCollection.register(UINib(nibName: "MovieCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "movie_cell")
=======
        
        apiService.getPopularMovies { (movies) in
            self.movies.append(contentsOf: movies.movies)
            //print(movies)
        }
        
        apiService.getTopRatedMovie { (movie) in
            print(movie)
        }
        
>>>>>>> origin/khatia
=======
>>>>>>> parent of aa37a25... home
    }


}

