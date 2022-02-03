import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.post("bookmark") { req -> EventLoopFuture<Bookmark> in
        let bookmark = try req.content.decode(Bookmark.self)
        return bookmark.create(on: req.db).map { bookmark }
    }
    
    app.get("bookmark") { req -> EventLoopFuture<[Bookmark]> in
        Bookmark.query(on: req.db).all()
    }
}
