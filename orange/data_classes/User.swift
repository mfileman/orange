//
//  User.swift
//  orange
//
//  Created by madison on 12/13/20.
//

// this class is intended to be used to be the wrapper object for a user in the db (all wip)
var increment = 0

class User: Identifiable, Codable {
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.id == rhs.id
    }
    
    var id: Int // from autoincrementer in db
    var username: String
    var name: String
    var bio: String?
    var posts: [Post]
    
    init(username u: String, name n: String, bio b: String? = nil) {
        self.id = increment
        increment+=1
        self.username = u
        self.name = n
        self.bio = b
        self.posts = []
    }
}

let users: [User] = [
    User(username: "madif", name: "✨madison✨", bio: "I'm just happy to be here✨"),
    User(username: "tofuboi", name: "axelander", bio: "my whole personality is that I like tofu"),
    User(username: "laurieakins", name: "Sparky", bio: "I didn't come here to make friends, I came here to win"),
    User(username: "teamlarson", name: "Dalton Larson"),
    User(username: "loglady99", name: "Lsl 101"),
    User(username: "juliveebee", name: "julianna"),
    User(username: "caitschronicles", name: "Chaos"),
]
