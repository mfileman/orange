//
//  Post.swift
//  orange
//
//  Created by madison on 12/13/20.
//

import Foundation

// this class is intended to be used to be the wrapper object for a post in the db (all wip)
class Post: Codable {
    var text_message: String?
    var photos: [URL]?
    var videos: [URL]? // URLS can can be used to init video & photo views
    
    init(text: String? = nil, photos: [URL]? = nil, videos: [URL]? = nil) {
        self.text_message = text
        self.photos = photos
        self.videos = videos
    }
}
