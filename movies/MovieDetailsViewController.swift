//
//  MovieDetailsViewController.swift
//  movies
//
//  Created by Suma Valli on 2/19/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String: Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // setting the title label and sizing it appropriately
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        // setting the synopsis label and sizing it appropriately
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        // getting poster url from  from movie object
        let posterPath = movie["backdrop_path"] as! String
        // adding base url and poster url
        let posterUrl = URL(string: "https://image.tmdb.org/t/p/w780" + posterPath)!
        // sending poster image to image view in storyboard
        posterImage.af.setImage(withURL: posterUrl)
    }
    
    
    


    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let detailsViewController = segue.destination as! TrailerViewController
        detailsViewController.movieId = movie["id"] as? String
        print(detailsViewController.movieId)
    }*/
    
    @IBAction func goToTrailer(_ sender: Any) {
        //add code here
        //let location = sender.location(in: view)
        // The didTap: method will be defined in Step 3 below.
        let tapGestureRecognizer = UITapGestureRecognizer()

        // Optionally set the number of required taps, e.g., 2 for a double click
        tapGestureRecognizer.numberOfTapsRequired = 1

        // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
        posterImage.isUserInteractionEnabled = true
        posterImage.addGestureRecognizer(tapGestureRecognizer)
    }
    
}
