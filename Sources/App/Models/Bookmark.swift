import Vapor
import Fluent

final class Bookmark: Model, Content {
    static let schema = "bookmarks"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String
    
    @Field(key: "url")
    var url: String
    
//    @Field(key: "gender")
//    var gender: String
    
    init() { }

    init(id: UUID? = nil, name: String, url: String) {
        self.id = id
        self.name = name
        self.url = url
//        self.gender = gender
    }
}
