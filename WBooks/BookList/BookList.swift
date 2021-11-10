//
//  BookList.swift
//  WBooks
//
//  Created by erik.e.anrique on 10/11/2021.
//

import UIKit

class BookList: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    /* old code
     var books: [Book] = []
     @IBOutlet weak var booksTable: UITableView!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         books = getBooks()
         booksTable.dataSource = self
         booksTable.delegate = self
         //let nib = UINib(nibName: BookListCellTableViewCell.identifier, bundle: Bundle.main)
         //booksTable.register(nib, forCellReuseIdentifier: BookListCellTableViewCell.identifier)
         // Do any additional setup after loading the view.
     }
     
     func getBooks() -> [Book] {
         return [Book(cover: nil, title: "Harry Potter", author: "JK Rowling")]
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         guard let cell = booksTable.dequeueReusableCell(withIdentifier: BookListCellTableViewCell.identifier, for: indexPath) as? BookListCellTableViewCell else {
             return BookListCellTableViewCell()
         }
         let book = books[indexPath.row]
         cell.setData(book: book)
         
         return cell
     }
     
     func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
     {
       return books.count
     }
     */
    
}
