//
//  ViewController.swift
//  FilmSecimiTest
//
//  Created by Atakan Cengiz KURT on 17.12.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var filmModels : Array<FilmModel> = [FilmModel]()
    var filmModels : [FilmModel]?{
        didSet{
        
//            self.tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "FilmTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmTableViewCell")
        
        let filmModelss = [
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995),
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995),
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995),
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995),
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995),
            FilmModel(name: "The Shawshank Redemption", year: 1994),
            FilmModel(name: "The Godfather", year: 1972),
            FilmModel(name: "The Godfather: Part II", year: 1974),
            FilmModel(name: "The Dark Knight", year: 2008),
            FilmModel(name: "12 Angry Men", year: 1954),
            FilmModel(name: "Schindler's List", year: 1993),
            FilmModel(name: " The Lord of the Rings: The Return of the King", year: 2003),
            FilmModel(name: "Pulp Fiction", year: 1994),
            FilmModel(name: "The Good, the Bad and the Ugly", year: 1966),
            FilmModel(name: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
            FilmModel(name: "Fight Club", year: 1999),
            FilmModel(name: "Forrest Gump", year: 1994),
            FilmModel(name: "Inception", year: 2010),
            FilmModel(name: "The Lord of the Rings: The Two Towers", year: 2002),
            FilmModel(name: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
            FilmModel(name: "The Matrix", year: 1999),
            FilmModel(name: "Goodfellas", year: 1990),
            FilmModel(name: "One Flew Over the Cuckoo's Nest", year: 1975),
            FilmModel(name: "Se7en", year: 1995)
        ]

        
       
        
        
        self.filmModels = filmModelss
        self.tableView.reloadData()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmModels?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: FilmTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FilmTableViewCell") as? FilmTableViewCell{
            let data = filmModels?[indexPath.row]
            cell.initCell(data!)
            
            cell.checkFavourite = ({ [self] in
                filmModels![indexPath.row].isFavourite = !(filmModels![indexPath.row].isFavourite)!
                
                tableView.reloadRows(at: [indexPath], with: .top)
                
            })
            
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let secondVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            secondVC.name = filmModels?[indexPath.row].name
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
        
        
       
        
        
    }
    
    
    
    
}

