//
//  BookModel.swift
//  WBooks
//
//  Created by erik.e.anrique on 10/11/2021.
//

import Foundation
import UIKit

class Book {
    var cover: UIImage?
    var title: String
    var author: String
    
    init(cover: UIImage?, title: String, author: String) {
        self.cover = cover
        self.title = title
        self.author = author
    }
}
