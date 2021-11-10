//
//  BookListCellTableViewCell.swift
//  WBooks
//
//  Created by erik.e.anrique on 10/11/2021.
//

import UIKit

class BookListCellTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(book: Book) {
        authorLabel.text = book.author
        titleLabel.text = book.title
    }
    
    static let identifier = "bookCell"
}
