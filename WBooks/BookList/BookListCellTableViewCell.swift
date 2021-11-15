//
//  BookListCellTableViewCell.swift
//  WBooks
//
//  Created by erik.e.anrique on 10/11/2021.
//

import UIKit

class BookListCellTableViewCell: UITableViewCell {
    static let identifier = "BookListCellTableViewCell"
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    func setData(book: Book) {
        authorLabel.text = book.author
        titleLabel.text = book.title
        coverImage.image = book.cover
    }
}
