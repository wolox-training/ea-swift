//
//  BookList.swift
//  WBooks
//
//  Created by erik.e.anrique on 10/11/2021.
//

import UIKit

class BookList: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var books: [Book] = []
    @IBOutlet weak var booksTable: UITableView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        books = getBooks()
        booksTable.dataSource = self
        booksTable.delegate = self
        let nib = UINib(nibName: BookListCellTableViewCell.identifier, bundle: Bundle.main)
        booksTable.register(nib, forCellReuseIdentifier: BookListCellTableViewCell.identifier)
        setUpNavigationBar()
    }
    
    func setUpNavigationBar() {
        let barColor = UIColor(rgb: 0x00ADEE)
        let notificationsImage = UIImage(named: "ic_notifications")
        let notifications = UIBarButtonItem(image: notificationsImage, style: .plain, target: self, action: nil)
        let searchImage = UIImage(named: "ic_search")
        let search = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: nil)
        let appearance = UINavigationBarAppearance()
        UINavigationBar.appearance().tintColor = .white
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = barColor
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        navigationItem.compactAppearance = appearance
        navigationItem.title = "LIBRARY"
        navigationItem.leftBarButtonItem = notifications
        navigationItem.rightBarButtonItem = search
    }
    
    func getBooks() -> [Book] {
        var mockBooks: [Book] = []
        
        let book1 = Book(cover: UIImage(named: "img_book1"), title: "First Book", author: "An author or smt idk")
        mockBooks.append(book1)
        mockBooks.append(book1)
        mockBooks.append(book1)
        mockBooks.append(book1)
        mockBooks.append(book1)
        mockBooks.append(book1)
        return mockBooks
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
}
