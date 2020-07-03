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

    @IBOutlet weak var moviesCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
        // Do any additional setup after loading the view.
        
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
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            let cell = moviesCollection.dequeueReusableCell(withReuseIdentifier: "header_cell", for: indexPath) as! HeaderCollectionViewCell
            
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = moviesCollection.dequeueReusableCell(withReuseIdentifier: "movie_cell", for: indexPath) as! MovieCollectionViewCell
            
            return cell
        }
        
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionHeader) {
            if indexPath.section == 0 {
                
            }
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CartHeaderCollectionReusableView", for: indexPath)
            
        }
        fatalError()

    }
    
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 600)
        }
        
        let width = (self.view.frame.width - 82) / 3
        
        return CGSize(width: width, height: 128)
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        return UIEdgeInsets(top: 12, left: 28, bottom: 12, right: 28)
    }
}
